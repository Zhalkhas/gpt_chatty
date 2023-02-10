import 'package:gpt_chatty/src/features/chats/domain/model/chat.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message.dart';

abstract class ChatsRepo {
  Stream<List<Chat>> getChats();

  Stream<List<Message>> getChatMessages(int chatID);

  Future<void> sendMessage(String text, int chatID);

  Future<Chat> createChat(String name);
}
