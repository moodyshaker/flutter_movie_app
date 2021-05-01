import 'package:json_annotation/json_annotation.dart';

part 'series_seasons.g.dart';

@JsonSerializable()
class SeriesSeasons {
  @JsonKey(name: 'air_date')
  String airDate;
  @JsonKey(name: 'episode_count')
  int episodeCount;
  int id;
  String name;
  String overview;
  @JsonKey(name: 'poster_path')
  String posterPath;
  @JsonKey(name: 'season_number')
  int seasonNumber;

  SeriesSeasons({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
   });

  factory SeriesSeasons.fromJson(Map<String, dynamic> json) =>
      _$SeriesSeasonsFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesSeasonsToJson(this);
}
