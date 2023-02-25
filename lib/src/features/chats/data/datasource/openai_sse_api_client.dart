import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gpt_chatty/src/features/chats/data/dto/completion_request.dart';
import 'package:gpt_chatty/src/features/chats/data/dto/completion_response.dart';
import 'package:sse_stream/sse_stream.dart';

class OpenAISSEApiClient {
  final Dio _client;

  OpenAISSEApiClient(Dio dio, {String? baseUrl})
      : _client = dio
          ..options.baseUrl = baseUrl ?? 'https://api.openai.com/v1/';

  Stream<CompletionResponse> complete(CompletionRequest request) async* {
    final Response<ResponseBody> resp = await _client.post(
      '/completions',
      options: Options(
        responseType: ResponseType.stream,
      ),
      data: request.toJson()..addAll({'stream': true}),
    );
    final eventStream = resp.data?.stream
        .cast<List<int>>()
        .transform(const Utf8Decoder())
        .map<String>((event) {
          print(event);
          return event;
        })
        .transform(const SseEventTransformer())
        .map<CompletionResponse?>((event) {
          try {
            final data = event.data;
            print('data: $data');
            if (data == null) return null;
            final json = jsonDecode(data) as Map<String, dynamic>;
            return CompletionResponse.fromJson(json);
          } on FormatException {
            return null;
          }
        })
        .where((event) => event != null)
        .cast<CompletionResponse>();
    if (eventStream != null) {
      yield* eventStream;
    }
  }
}
