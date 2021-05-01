import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_movie_app/models/details/series/series_seasons.dart';

part 'series_details.g.dart';

@JsonSerializable()
class SeriesDetails {
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'first_air_date')
  String firstAirDate;
  String homepage;
  int id;
  @JsonKey(name: 'in_production')
  bool inProduction;
  List<String> languages;
  @JsonKey(name: 'last_air_date')
  String lastAirDate;
  String name;
  @JsonKey(name: 'number_of_episodes')
  int numberOfEpisodes;
  @JsonKey(name: 'number_of_seasons')
  int numberOfSeasons;
  @JsonKey(name: 'original_language')
  String originalLanguage;
  @JsonKey(name: 'original_name')
  String originalName;
  String overview;
  double popularity;
  @JsonKey(name: 'poster_path')
  String posterPath;
  List<SeriesSeasons> seasons;
  String status;
  String tagline;
  String type;
  @JsonKey(name: 'vote_average')
  double voteAverage;
  @JsonKey(name: 'vote_count')
  int voteCount;

  SeriesDetails({
    this.backdropPath,
    this.firstAirDate,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.name,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.seasons,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
  });

  factory SeriesDetails.fromJson(Map<String, dynamic> json) =>
      _$SeriesDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesDetailsToJson(this);
}
