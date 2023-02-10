import 'package:json_annotation/json_annotation.dart';

part 'completion_choice_dto.g.dart';

@JsonSerializable()
class CompletionChoiceDto {
  final String text;
  final int index;
  @JsonKey(name: 'finish_reason')
  final String? finishReason;

  CompletionChoiceDto({
    required this.text,
    required this.index,
    this.finishReason,
  });

  factory CompletionChoiceDto.fromJson(Map<String, dynamic> json) =>
      _$CompletionChoiceDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CompletionChoiceDtoToJson(this);
}
