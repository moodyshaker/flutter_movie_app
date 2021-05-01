import 'package:json_annotation/json_annotation.dart';

part 'series_result.g.dart';

@JsonSerializable()
class Results {
  @JsonKey(name: 'original_name')
  String originalName;
  @JsonKey(name: 'genre_ids')
  List<int> genreIds;
  String name;
  double popularity;
  @JsonKey(name: 'origin_country')
  List<String> originCountry;
  @JsonKey(name: 'vote_count')
  int voteCount;
  @JsonKey(name: 'first_air_date')
  String firstAirDate;
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'original_language')
  String originalLanguage;
  int id;
  @JsonKey(name: 'vote_average')
  double voteAverage;
  String overview;
  @JsonKey(name: 'poster_path')
  String posterPath;

  Results({
    this.originalName,
    this.genreIds,
    this.name,
    this.popularity,
    this.originCountry,
    this.voteCount,
    this.firstAirDate,
    this.backdropPath,
    this.originalLanguage,
    this.id,
    this.voteAverage,
    this.overview,
    this.posterPath,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
