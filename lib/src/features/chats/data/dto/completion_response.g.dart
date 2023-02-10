// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionResponse _$CompletionResponseFromJson(Map<String, dynamic> json) =>
    CompletionResponse(
      id: json['id'] as String,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => CompletionChoiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompletionResponseToJson(CompletionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'choices': instance.choices,
    };
