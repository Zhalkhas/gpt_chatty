import 'package:dio/dio.dart';
import 'package:gpt_chatty/src/features/chats/data/dto/completion_request.dart';
import 'package:gpt_chatty/src/features/chats/data/dto/completion_response.dart';
import 'package:retrofit/retrofit.dart';

part 'openai_api_client.g.dart';

@RestApi(baseUrl: 'https://api.openai.com/v1/')
abstract class OpenAIApiClient {
  factory OpenAIApiClient(Dio dio, {String baseUrl}) = _OpenAIApiClient;

  @POST('/completions')
  Future<CompletionResponse> complete(
    @Body() CompletionRequest request,
  );
}
