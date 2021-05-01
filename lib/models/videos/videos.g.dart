// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return Videos(
    id: json['id'] as int,
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : VideoResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VideosToJson(Videos instance) => <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
