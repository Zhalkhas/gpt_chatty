import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_chatty/src/features/chats/domain/bloc/create_chat_bloc.dart';

class CreateChatPage extends StatefulWidget {
  const CreateChatPage({Key? key}) : super(key: key);

  @override
  State<CreateChatPage> createState() => _CreateChatPageState();
}

class _CreateChatPageState extends State<CreateChatPage> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateChatBloc(RepositoryProvider.of(context)),
      child: BlocListener<CreateChatBloc, CreateChatState>(
        listener: (context, state) => state.mapOrNull<void>(
          created: (state) =>
              context.go('/chats/${state.chat.id}?name=${state.chat.name}'),
        ),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'chat name'),
                controller: _nameController,
              ),
              BlocBuilder<CreateChatBloc, CreateChatState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      if (_nameController.text.isNotEmpty) {
                        context
                            .read<CreateChatBloc>()
                            .add(CreateChatEvent.create(_nameController.text));
                      }
                    },
                    child: state.isCreating
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const Text('create chat'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
