import 'package:json_annotation/json_annotation.dart';

part 'completion_request.g.dart';

@JsonSerializable()
class CompletionRequest {
  final String model;
  final String prompt;
  final int? maxTokens;
  final double? temperature;
  final double? topP;
  final int n;

  const CompletionRequest({
    required this.model,
    required this.prompt,
    this.maxTokens,
    this.temperature,
    this.topP,
    this.n = 1,
  });

  factory CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$CompletionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CompletionRequestToJson(this);
}
