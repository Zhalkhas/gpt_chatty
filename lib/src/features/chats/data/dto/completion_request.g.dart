// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionRequest _$CompletionRequestFromJson(Map<String, dynamic> json) =>
    CompletionRequest(
      model: json['model'] as String,
      prompt: json['prompt'] as String,
      maxTokens: json['max_tokens'] as int?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      n: json['n'] as int? ?? 1,
    );

Map<String, dynamic> _$CompletionRequestToJson(CompletionRequest instance) {
  final val = <String, dynamic>{
    'model': instance.model,
    'prompt': instance.prompt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('temperature', instance.temperature);
  writeNotNull('top_p', instance.topP);
  val['n'] = instance.n;
  return val;
}
