import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/chat.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo.dart';

part 'chats_list_bloc.freezed.dart';

class ChatsListBloc extends Bloc<ChatsListEvent, ChatsListState> {
  final ChatsRepo chatRepo;
  StreamSubscription<List<Chat>>? _chatsStreamSub;
  ChatsListBloc(this.chatRepo) : super(const ChatsListState([])) {
    on<ChatsListEvent>((event, emit) => event
        .when<Stream<ChatsListState>>(
            chatsListUpdated: _onChatsListUpdated, addChat: _onAddChat)
        .forEach(emit));
    _chatsStreamSub = chatRepo
        .getChats()
        .listen((chats) => add(ChatsListEvent.chatsListUpdated(chats)));
  }

  @override
  Future<void> close() async {
    super.close();
    _chatsStreamSub?.cancel();
  }

  Stream<ChatsListState> _onChatsListUpdated(List<Chat> chats) async* {
    yield ChatsListState(chats);
  }

  Stream<ChatsListState> _onAddChat(String name) async* {
    await chatRepo.createChat(name);
  }
}

@freezed
class ChatsListState with _$ChatsListState {
  const factory ChatsListState(List<Chat> chats) = _ChatsListState;
}

@freezed
class ChatsListEvent with _$ChatsListEvent {
  const factory ChatsListEvent.chatsListUpdated(List<Chat> chats) =
      _chatsListUpdated;
  const factory ChatsListEvent.addChat(String name) = _addChat;
}
