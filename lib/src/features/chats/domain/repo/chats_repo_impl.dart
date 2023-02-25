import 'package:collection/collection.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/chats_dao.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/openai_api_client.dart';
import 'package:gpt_chatty/src/features/chats/data/datasource/openai_sse_api_client.dart';
import 'package:gpt_chatty/src/features/chats/data/dto/completion_request.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/chat.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message.dart';
import 'package:gpt_chatty/src/features/chats/domain/model/message_author.dart';
import 'package:gpt_chatty/src/features/chats/domain/repo/chats_repo.dart';

class ChatsRepoImpl implements ChatsRepo {
  final OpenAIApiClient openAIApiClient;
  final OpenAISSEApiClient openAISSEApiClient;
  final ChatsDao chatsDao;

  const ChatsRepoImpl(
    this.openAIApiClient,
    this.openAISSEApiClient,
    this.chatsDao,
  );

  @override
  Stream<List<Message>> getChatMessages(int chatID) => chatsDao
      .watchChatMessages(chatID)
      .map((messages) => messages.map<Message>(Message.fromDB).toList());

  @override
  Stream<List<Chat>> getChats() {
    return chatsDao
        .watchChats()
        .map((chats) => chats.map(Chat.fromDB).toList());
  }

  @override
  Future<void> sendMessage(String text, int chatID) async {
    await chatsDao.addMessage(chatID, text, MessageAuthor.me);
    final prevMessages = (await chatsDao.getChatMessages(chatID)).reversed;
    final prompt =
        '${prevMessages.map((msg) => '${msg.author.name}: ${msg.body}').join('\n')}'
        '\nAI:';
    final respStream = openAISSEApiClient.complete(
      CompletionRequest(
        model: 'text-davinci-003',
        prompt: prompt,
        maxTokens: 2048,
      ),
    );

    int? messageID;
    await for (var response in respStream) {
      final aiText = (response.choices
            ..sort((a, b) => a.index.compareTo(b.index)))
          .firstOrNull
          ?.text;
      if (aiText != null) {
        messageID = await chatsDao.upsertMessage(
          messageID,
          chatID,
          messageID == null ? aiText.trim() : aiText,
          MessageAuthor.ai,
        );
      }
    }
  }

  @override
  Future<Chat> createChat(String name) async {
    final chat = await chatsDao.createChat(name);
    return Chat.fromDB(chat);
  }
}

extension on MessageAuthor {
  String get name {
    switch (this) {
      case MessageAuthor.me:
        return 'Human';
      case MessageAuthor.ai:
        return 'AI';
    }
  }
}
