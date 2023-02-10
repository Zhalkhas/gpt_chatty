import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpt_chatty/src/features/auth/domain/bloc/auth_bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _apiKeyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16 + Theme.of(context).visualDensity.horizontal * 4,
            vertical: 32 + Theme.of(context).visualDensity.vertical * 4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text('Enter API key'),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32 + Theme.of(context).visualDensity.vertical * 4,
                ),
                child: TextFormField(
                  controller: _apiKeyController,
                  maxLength: 70,
                ),
              ),
              ElevatedButton(
                  onPressed: () => context
                      .read<AuthBloc>()
                      .add(AuthEvent.authorize(_apiKeyController.text)),
                  child: const Text('Login')),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16 + Theme.of(context).visualDensity.vertical * 4,
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'You can get API key from\n'),
                      TextSpan(
                        text: 'https://platform.openai.com/account/api-keys',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => launchUrlString(
                                'https://platform.openai.com/account/api-keys',
                              ),
                        style: const TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
