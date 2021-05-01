import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_movie_app/models/review/review_results.dart';

part 'review_details.g.dart';

@JsonSerializable()
class ReviewDetails {
  int id;
  int page;
  List<ReviewResults> results;
  @JsonKey(name: 'total_pages')
  int totalPages;
  @JsonKey(name: 'total_results')
  int totalResults;

  ReviewDetails({
    this.id,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory ReviewDetails.fromJson(Map<String, dynamic> json) =>
      _$ReviewDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDetailsToJson(this);
}
