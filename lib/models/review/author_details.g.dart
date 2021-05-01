// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) {
  return AuthorDetails(
    name: json['name'] as String,
    username: json['username'] as String,
    avatarPath: json['avatar_path'] as String,
  );
}

Map<String, dynamic> _$AuthorDetailsToJson(AuthorDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar_path': instance.avatarPath,
    };
