// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_choice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionChoiceDto _$CompletionChoiceDtoFromJson(Map<String, dynamic> json) =>
    CompletionChoiceDto(
      text: json['text'] as String,
      index: json['index'] as int,
      finishReason: json['finish_reason'] as String?,
    );

Map<String, dynamic> _$CompletionChoiceDtoToJson(CompletionChoiceDto instance) {
  final val = <String, dynamic>{
    'text': instance.text,
    'index': instance.index,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('finish_reason', instance.finishReason);
  return val;
}
