import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_chatty/src/features/auth/domain/bloc/auth_bloc.dart';
import 'package:gpt_chatty/src/features/chats/domain/bloc/chats_list_bloc.dart';
import 'package:intl/intl.dart';

class ChatsListDrawer extends StatelessWidget {
  final bool isDrawer;
  const ChatsListDrawer({Key? key, this.isDrawer = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsListBloc, ChatsListState>(
      builder: (context, state) {
        final chats = state.chats;
        return DecoratedBox(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      onPressed: () {
                        context.go('/chats/create');
                        if (isDrawer) Navigator.pop(context);
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('create chat'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final chat = chats[index];
                      return ListTile(
                        onTap: () {
                          GoRouter.of(context)
                              .go('/chats/${chat.id}?name=${chat.name}');
                          if (isDrawer) Navigator.pop(context);
                        },
                        title: Text(chat.name),
                        subtitle: Text(
                          DateFormat.yMMMMEEEEd().format(chat.createdAt),
                        ),
                      );
                    },
                    itemCount: chats.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () => context
                              .read<AuthBloc>()
                              .add(AuthEvent.unauthorize()),
                          icon: Icon(
                            Icons.logout,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          label: Text('logout'),
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
