// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesDetails _$SeriesDetailsFromJson(Map<String, dynamic> json) {
  return SeriesDetails(
    backdropPath: json['backdrop_path'] as String,
    firstAirDate: json['first_air_date'] as String,
    homepage: json['homepage'] as String,
    id: json['id'] as int,
    inProduction: json['in_production'] as bool,
    languages: (json['languages'] as List)?.map((e) => e as String)?.toList(),
    lastAirDate: json['last_air_date'] as String,
    name: json['name'] as String,
    numberOfEpisodes: json['number_of_episodes'] as int,
    numberOfSeasons: json['number_of_seasons'] as int,
    originalLanguage: json['original_language'] as String,
    originalName: json['original_name'] as String,
    overview: json['overview'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    posterPath: json['poster_path'] as String,
    seasons: (json['seasons'] as List)
        ?.map((e) => e == null
            ? null
            : SeriesSeasons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    tagline: json['tagline'] as String,
    type: json['type'] as String,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$SeriesDetailsToJson(SeriesDetails instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'homepage': instance.homepage,
      'id': instance.id,
      'in_production': instance.inProduction,
      'languages': instance.languages,
      'last_air_date': instance.lastAirDate,
      'name': instance.name,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'seasons': instance.seasons,
      'status': instance.status,
      'tagline': instance.tagline,
      'type': instance.type,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
