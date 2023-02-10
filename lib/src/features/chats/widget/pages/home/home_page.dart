import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Markdown(
        onTapLink: (text, href, title) =>
            href != null ? launchUrlString(href) : null,
        data: '# Home\n'
            'Welcome to the GPT Chatty, OpenAI API client '
            'which tries to simulate ChatGPT.\n'
            'You can create a chat, or join '
            'an existing one from panel in left.\n'
            '## General recommendations\n'
            '- Try to separate chats if possible,'
            ' context is saved by sending entire conversation on each request,'
            ' so it will be slow if you send too much text.\n'
            '- Moreover, each request is limited to 4096 tokens, '
            'where each token is equal to one word, so, '
            'after limit is reached text stops generating\n'
            '- OpenAI gives free 18USD after registration'
            'after this limit is reached, text generation is stopped.\n'
            '- Don\'t forget to check API limits usage at '
            'https://platform.openai.com/account/usage\n');
  }
}
