import 'package:json_annotation/json_annotation.dart';

import 'cast.dart';
import 'crew.dart';

part 'credits.g.dart';

@JsonSerializable()
class Credits {
  int id;
  List<Cast> cast;
  List<Crew> crew;

  Credits({
    this.id,
    this.cast,
    this.crew,
  });

  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);

  Map<String, dynamic> toJson() => _$CreditsToJson(this);
}
