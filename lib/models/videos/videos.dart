import 'package:json_annotation/json_annotation.dart';

import 'video_result.dart';

part 'videos.g.dart';

@JsonSerializable()
class Videos {
  int id;
  List<VideoResult> results;

  Videos({
    this.id,
    this.results,
  });

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}
