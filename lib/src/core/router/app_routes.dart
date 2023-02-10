import 'package:go_router/go_router.dart';
import 'package:gpt_chatty/src/features/chats/widget/pages/app_scaffold/scaffold_page.dart';
import 'package:gpt_chatty/src/features/chats/widget/pages/chat/chat_page.dart';
import 'package:gpt_chatty/src/features/chats/widget/pages/create_chat/create_chat_page.dart';
import 'package:gpt_chatty/src/features/chats/widget/pages/home/home_page.dart';

final appRoutes = <RouteBase>[
  GoRoute(path: '/', redirect: (context, state) => '/chats'),
  ShellRoute(
    routes: [
      GoRoute(
        path: '/chats',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'create',
            builder: (context, state) => const CreateChatPage(),
          ),
          GoRoute(
            path: ':chatID',
            builder: (context, state) => ChatPage(
              id: int.parse(state.params['chatID']!),
              name: state.queryParams['name'],
            ),
          ),
        ],
      ),
    ],
    builder: (context, state, child) => ScaffoldPage(
      title: state.queryParams['name'],
      child: child,
    ),
  ),
];
