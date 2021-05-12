import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_movie_app/models/series/series_result.dart';
part 'series.g.dart';

@JsonSerializable()
class Series {
  int page;
  @JsonKey(name: 'total_results')
  int totalResults;
  @JsonKey(name: 'total_pages')
  int totalPages;
  List<Results> results;

  Series({
    this.page,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
