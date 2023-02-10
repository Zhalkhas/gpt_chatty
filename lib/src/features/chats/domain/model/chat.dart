import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/core/db/app_db.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required int id,
    required String name,
    required DateTime createdAt,
    @Default([]) List<Message> messages,
  }) = _Chat;

  factory Chat.fromDB(ChatsTableData e) => Chat(
        id: e.id,
        name: e.name,
        createdAt: e.createdAt,
      );
}
