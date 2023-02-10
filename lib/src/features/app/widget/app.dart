import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_chatty/src/core/db/connection/connection.dart';
import 'package:gpt_chatty/src/core/router/app_routes.dart';
import 'package:gpt_chatty/src/core/router/auth_routes.dart';
import 'package:gpt_chatty/src/features/app/widget/app_brightness_listener.dart';
import 'package:gpt_chatty/src/features/auth/data/interceptor/auth_interceptor.dart';
import 'package:gpt_chatty/src/features/auth/domain/bloc/auth_bloc.dart';
import 'package:gpt_chatty/src/features/auth/domain/repo/token_repo.dart';
import 'package:gpt_chatty/src/features/auth/domain/repo/token_repo_impl.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_dao.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/openai_api_client.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo_impl.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TokenRepo>(
          create: (context) => TokenRepoImpl(const FlutterSecureStorage()),
        ),
        RepositoryProvider<ChatsRepo>(
          create: (context) => ChatsRepoImpl(
            OpenAIApiClient(
              Dio()
                ..interceptors.addAll([
                  AuthInterceptor(
                      getToken: () async =>
                          await RepositoryProvider.of<TokenRepo>(context)
                              .getApiToken() ??
                          ''),
                  LogInterceptor(
                    request: true,
                    requestBody: true,
                    requestHeader: true,
                    responseHeader: true,
                    responseBody: true,
                    error: true,
                  )
                ]),
            ),
            ChatsDao(connect()),
          ),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(RepositoryProvider.of(context))
          ..add(const AuthEvent.load()),
        child: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (prev, curr) => prev.isLoading && curr.isLoaded,
          listener: (context, state) => FlutterNativeSplash.remove(),
          builder: (context, state) {
            if (state.isLoaded) {
              return AppBrightnessListener(builder: (context, brightness) {
                return MaterialApp.router(
                  themeMode: brightness == Brightness.dark
                      ? ThemeMode.dark
                      : ThemeMode.light,
                  darkTheme: ThemeData.dark(useMaterial3: true),
                  theme: ThemeData.light(useMaterial3: true),
                  routerConfig: GoRouter(
                    routes: [
                      if (state.isUnauthorized) ...authRoutes,
                      if (state.isAuthorized) ...appRoutes,
                    ],
                  ),
                );
              });
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
