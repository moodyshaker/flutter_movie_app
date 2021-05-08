// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    originalName: json['original_name'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    name: json['name'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    originCountry:
        (json['origin_country'] as List)?.map((e) => e as String)?.toList(),
    voteCount: json['vote_count'] as int,
    firstAirDate: json['first_air_date'] as String,
    backdropPath: json['backdrop_path'] as String,
    originalLanguage: json['original_language'] as String,
    id: json['id'] as int,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    overview: json['overview'] as String,
    posterPath: json['poster_path'] as String,
  );
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'original_name': instance.originalName,
      'genre_ids': instance.genreIds,
      'name': instance.name,
      'popularity': instance.popularity,
      'origin_country': instance.originCountry,
      'vote_count': instance.voteCount,
      'first_air_date': instance.firstAirDate,
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'id': instance.id,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
