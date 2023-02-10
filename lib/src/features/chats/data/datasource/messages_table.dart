import 'package:drift/drift.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_table.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

class MessagesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chatId => integer().references(ChatsTable, #id)();
  TextColumn get author => textEnum<MessageAuthor>()();
  TextColumn get body => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
