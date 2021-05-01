import 'package:json_annotation/json_annotation.dart';

import 'movie_result.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  List<Results> results;
  int page;
  @JsonKey(name: 'total_results')
  int totalResults;
  @JsonKey(name: 'total_pages')
  int totalPages;

  Movie({
    this.results,
    this.page,
    this.totalResults,
    this.totalPages,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
