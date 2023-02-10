import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpt_chatty/src/features/chats/domain/bloc/chats_list_bloc.dart';
import 'package:gpt_chatty/src/features/chats/widget/chats_list_drawer.dart';

class ScaffoldPage extends StatefulWidget {
  final String? title;
  final Widget child;
  const ScaffoldPage({Key? key, this.title, required this.child})
      : super(key: key);

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  late final bloc = runZonedGuarded(
      () => ChatsListBloc(RepositoryProvider.of(context)),
      (e, s) => print("err $e"))!;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return BlocProvider<ChatsListBloc>.value(
      value: bloc,
      child: Row(
        children: [
          if (mq.size.width >= 800)
            const Expanded(child: Material(child: ChatsListDrawer())),
          Expanded(
            flex: 4,
            child: Scaffold(
                appBar: AppBar(
                  title: Text(widget.title ?? 'gpt chatty'),
                ),
                drawer: mq.size.width < 800
                    ? const Drawer(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        child: ChatsListDrawer(isDrawer: true))
                    : null,
                body: widget.child),
          ),
        ],
      ),
    );
  }
}
