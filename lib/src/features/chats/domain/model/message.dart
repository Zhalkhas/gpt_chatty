import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/core/db/app_db.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required int chatID,
    required String text,
    required DateTime createdAt,
    required MessageAuthor messageAuthor,
  }) = _Message;

  factory Message.fromDB(MessagesTableData e) => Message(
        id: e.id,
        chatID: e.chatId,
        text: e.body,
        createdAt: e.createdAt,
        messageAuthor: e.author,
      );
}
