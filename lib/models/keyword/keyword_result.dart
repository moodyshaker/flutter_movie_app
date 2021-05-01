import 'package:json_annotation/json_annotation.dart';

part 'keyword_result.g.dart';

@JsonSerializable()
class KeywordResult {
  int id;
  String name;

  KeywordResult({
    this.id,
    this.name,
  });

  factory KeywordResult.fromJson(Map<String, dynamic> json) =>
      _$KeywordResultFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordResultToJson(this);
}
