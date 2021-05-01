import 'package:json_annotation/json_annotation.dart';

part 'author_details.g.dart';

@JsonSerializable()
class AuthorDetails {
  String name;
  String username;
  @JsonKey(name: 'avatar_path')
  String avatarPath;

  AuthorDetails({
    this.name,
    this.username,
    this.avatarPath,
  });

  factory AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailsToJson(this);
}
