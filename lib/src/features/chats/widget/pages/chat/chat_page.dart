import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpt_chatty/src/features/chats/domain/bloc/chat_messages_bloc.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

class ChatPage extends StatefulWidget {
  final int id;
  final String? name;
  const ChatPage({
    Key? key,
    this.name,
    required this.id,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late var messagesBloc =
      ChatMessagesBloc(RepositoryProvider.of(context), chatID: widget.id);
  final messageController = TextEditingController();

  @override
  void didUpdateWidget(ChatPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id) {
      messagesBloc = ChatMessagesBloc(
        RepositoryProvider.of(context),
        chatID: widget.id,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: messagesBloc,
      child: BlocBuilder<ChatMessagesBloc, ChatMessagesState>(
        builder: (context, state) {
          final messages = state.messages;
          return SafeArea(
            bottom: true,
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(),
                    reverse: true,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      return ListTile(
                        leading: Icon(
                          message.messageAuthor == MessageAuthor.me
                              ? Icons.person
                              : Icons.computer,
                        ),
                        title: Text(message.text),
                      );
                    },
                    itemCount: messages.length,
                  ),
                ),
                const Divider(),
                Form(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 7,
                    controller: messageController,
                    validator: _validateMessage,
                    onFieldSubmitted: (_) => _onSendMessageBuilder(context),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal:
                            Theme.of(context).visualDensity.horizontal * 2 + 8,
                        vertical:
                            Theme.of(context).visualDensity.vertical * 2 + 4,
                      ),
                      hintText: 'Enter message',
                      suffixIcon: Builder(
                        builder: (context) => IconButton(
                          onPressed: _onSendMessageBuilder(context),
                          icon: const Icon(Icons.send),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  String? _validateMessage(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  VoidCallback _onSendMessageBuilder(BuildContext context) => () {
        if (Form.of(context).validate()) {
          context.read<ChatMessagesBloc>().add(
                ChatMessagesEvent.sendMessage(
                  messageController.text,
                ),
              );
          messageController.text = '';
        }
      };
}
