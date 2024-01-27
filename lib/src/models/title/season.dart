import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class Season {
  String? string;
  int? code;
  int? year;
  @JsonKey(name: 'week_day')
  int? weekDay;

  Season(this.string, this.code, this.year, this.weekDay);

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
