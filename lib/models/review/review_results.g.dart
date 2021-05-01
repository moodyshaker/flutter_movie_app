// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResults _$ReviewResultsFromJson(Map<String, dynamic> json) {
  return ReviewResults(
    author: json['author'] as String,
    authorDetails: json['author_details'] == null
        ? null
        : AuthorDetails.fromJson(
            json['author_details'] as Map<String, dynamic>),
    content: json['content'] as String,
    createdAt: json['created_at'] as String,
    id: json['id'] as String,
    updatedAt: json['updated_at'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ReviewResultsToJson(ReviewResults instance) =>
    <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'url': instance.url,
    };
