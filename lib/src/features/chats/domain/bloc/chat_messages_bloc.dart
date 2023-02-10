import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo.dart';

part 'chat_messages_bloc.freezed.dart';

class ChatMessagesBloc extends Bloc<ChatMessagesEvent, ChatMessagesState> {
  final ChatsRepo chatRepo;
  StreamSubscription<List<Message>>? _messagesStreamSub;

  ChatMessagesBloc(this.chatRepo, {required int chatID})
      : super(ChatMessagesState(chatID, [])) {
    on<ChatMessagesEvent>((event, emit) => event
        .when<Stream<ChatMessagesState>>(
            messagesListUpdated: _onMessagesListUpdated,
            sendMessage: _onSendMessage)
        .forEach(emit));
    _messagesStreamSub = chatRepo.getChatMessages(chatID).listen(
        (messages) => add(ChatMessagesEvent.messagesListUpdated(messages)));
  }

  @override
  Future<void> close() async {
    super.close();
    _messagesStreamSub?.cancel();
  }

  Stream<ChatMessagesState> _onMessagesListUpdated(
      List<Message> messages) async* {
    yield state.copyWith(messages: messages);
  }

  Stream<ChatMessagesState> _onSendMessage(String text) async* {
    await chatRepo.sendMessage(text, state.chatID);
  }
}

@freezed
class ChatMessagesState with _$ChatMessagesState {
  const factory ChatMessagesState(
    int chatID,
    List<Message> messages,
  ) = _ChatsListState;
}

@freezed
class ChatMessagesEvent with _$ChatMessagesEvent {
  const factory ChatMessagesEvent.messagesListUpdated(List<Message> messages) =
      _messagesListUpdated;
  const factory ChatMessagesEvent.sendMessage(String text) = _sendMessage;
}
