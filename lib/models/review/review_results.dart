import 'package:json_annotation/json_annotation.dart';

import 'author_details.dart';

part 'review_results.g.dart';

@JsonSerializable()
class ReviewResults {
  String author;
  @JsonKey(name: 'author_details')
  AuthorDetails authorDetails;
  String content;
  @JsonKey(name: 'created_at')
  String createdAt;
  String id;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  String url;

  ReviewResults({
    this.author,
    this.authorDetails,
    this.content,
    this.createdAt,
    this.id,
    this.updatedAt,
    this.url,
  });

  factory ReviewResults.fromJson(Map<String, dynamic> json) =>
      _$ReviewResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResultsToJson(this);
}
