import 'package:json_annotation/json_annotation.dart';

part 'video_result.g.dart';

@JsonSerializable()
class VideoResult {
  String id;
  @JsonKey(name: 'iso_639_1')
  String iso6391;
  @JsonKey(name: 'iso_3166_1')
  String iso31661;
  String key;
  String name;
  String site;
  int size;
  String type;

  VideoResult({
    this.id,
    this.iso6391,
    this.iso31661,
    this.key,
    this.name,
    this.site,
    this.size,
    this.type,
  });

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);

  Map<String, dynamic> toJson() => _$VideoResultToJson(this);
}
