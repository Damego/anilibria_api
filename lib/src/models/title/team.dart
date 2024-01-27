import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  final List<String>? voice;
  final List<String>? translator;
  final List<String>? editing;
  final List<String>? decor;
  final List<String>? timing;

  Team(this.voice, this.translator, this.editing, this.decor, this.timing);

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
