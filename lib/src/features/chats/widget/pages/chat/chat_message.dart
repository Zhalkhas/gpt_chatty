import 'package:flutter/material.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

class ChatMessage extends StatelessWidget {
  final Message message;
  const ChatMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        message.messageAuthor == MessageAuthor.me
            ? Icons.person
            : Icons.computer,
      ),
      title: Text(message.text),
    );
  }
}
