import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  List<String>? voice;
  List<String>? translator;
  List<String>? editing;
  List<String>? decor;
  List<String>? timing;

  Team(this.voice, this.translator, this.editing, this.decor, this.timing);

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
