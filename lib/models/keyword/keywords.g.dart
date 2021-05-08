// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Keyword _$KeywordFromJson(Map<String, dynamic> json) {
  return Keyword(
    id: json['id'] as int,
    keywords: (json['keywords'] as List)
        ?.map((e) => e == null
            ? null
            : KeywordResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$KeywordToJson(Keyword instance) => <String, dynamic>{
      'id': instance.id,
      'keywords': instance.keywords,
    };
