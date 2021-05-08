// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewDetails _$ReviewDetailsFromJson(Map<String, dynamic> json) {
  return ReviewDetails(
    id: json['id'] as int,
    page: json['page'] as int,
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : ReviewResults.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalPages: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
  );
}

Map<String, dynamic> _$ReviewDetailsToJson(ReviewDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
