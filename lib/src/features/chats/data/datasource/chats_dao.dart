import 'package:drift/drift.dart';
import 'package:gpt_chatty/src/core/db/app_db.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_table.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/messages_table.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';

part 'chats_dao.g.dart';

@DriftAccessor(tables: [ChatsTable, MessagesTable])
class ChatsDao extends DatabaseAccessor<AppDB> with _$ChatsDaoMixin {
  ChatsDao(AppDB db) : super(db);

  Future<List<MessagesTableData>> getChatMessages(int chatID) =>
      (select(messagesTable)
            ..where(
              (tbl) => tbl.chatId.equals(chatID),
            )
            ..orderBy(
              [
                (tbl) => OrderingTerm(
                      expression: tbl.createdAt,
                      mode: OrderingMode.desc,
                    ),
              ],
            ))
          .get();

  Stream<List<MessagesTableData>> watchChatMessages(int chatID) =>
      (select(messagesTable)
            ..where(
              (tbl) => tbl.chatId.equals(chatID),
            )
            ..orderBy(
              [
                (tbl) => OrderingTerm(
                      expression: tbl.createdAt,
                      mode: OrderingMode.desc,
                    ),
              ],
            ))
          .watch();

  Future<void> addMessage(int chatID, String text, MessageAuthor author) async {
    final message = MessagesTableCompanion.insert(
      chatId: chatID,
      body: text,
      author: author,
    );
    await messagesTable.insertOne(message);
  }

  Stream<List<ChatsTableData>> watchChats() => (select(chatsTable)
        ..orderBy(
          [
            (tbl) => OrderingTerm(
                  expression: tbl.createdAt,
                  mode: OrderingMode.desc,
                ),
          ],
        ))
      .watch();

  Future<ChatsTableData> createChat(String name) async {
    final id = await chatsTable.insertOne(
      ChatsTableCompanion.insert(name: name),
    );
    return (select(chatsTable)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .getSingle();
  }
}
