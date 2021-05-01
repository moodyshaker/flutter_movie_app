import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_movie_app/models/keyword/keyword_result.dart';

part 'keywords.g.dart';

@JsonSerializable()
class Keyword {
  int id;
  List<KeywordResult> keywords;

  Keyword({
    this.id,
    this.keywords,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordToJson(this);
}
