import 'package:gpt_chatty/src/features/chats/data/dto/completion_choice_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'completion_response.g.dart';

@JsonSerializable()
class CompletionResponse {
  final String id;
  final String model;
  final List<CompletionChoiceDto> choices;

  const CompletionResponse({
    required this.id,
    required this.model,
    required this.choices,
  });

  factory CompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$CompletionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompletionResponseToJson(this);
}
