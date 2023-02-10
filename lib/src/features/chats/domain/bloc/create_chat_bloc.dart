import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/chat.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo.dart';

part 'create_chat_bloc.freezed.dart';

class CreateChatBloc extends Bloc<CreateChatEvent, CreateChatState> {
  final ChatsRepo chatsRepo;
  CreateChatBloc(this.chatsRepo) : super(const CreateChatState.initial()) {
    on<CreateChatEvent>(
      (event, emit) => event
          .when<Stream<CreateChatState>>(
            create: _onCreate,
          )
          .forEach(emit),
    );
  }

  Stream<CreateChatState> _onCreate(String name) async* {
    yield const CreateChatState.creating();
    try {
      final chat = await chatsRepo.createChat(name);
      yield CreateChatState.created(chat);
    } on Object catch (e) {
      yield CreateChatState.error(e);
      rethrow;
    } finally {
      yield const CreateChatState.initial();
    }
  }
}

@freezed
class CreateChatState with _$CreateChatState {
  bool get isCreating => maybeMap(creating: (_) => true, orElse: () => false);
  const CreateChatState._();
  const factory CreateChatState.initial() = _initial;
  const factory CreateChatState.creating() = _creating;
  const factory CreateChatState.created(Chat chat) = _created;
  const factory CreateChatState.error(Object error) = _error;
}

@freezed
class CreateChatEvent with _$CreateChatEvent {
  const factory CreateChatEvent.create(String name) = _create;
}
