import 'package:drift/drift.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_dao.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_table.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/messages_table.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

part 'app_db.g.dart';

@DriftDatabase(
  tables: [ChatsTable, MessagesTable],
  daos: [ChatsDao],
)
class AppDB extends _$AppDB {
  AppDB(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;
}
