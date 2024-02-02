import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/src/models/utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule {
  /// Индекс дня недели. 0 - Понедельник 6 - Воскресенье
  final int? day;

  /// Список тайтлов в день day
  final List<Title>? list;

  Schedule(this.day, this.list);

  static fromJsonModel(Map<String, dynamic> json, String? descriptionType) {
    if (json["list"] != null) {
      json["list"] = [
        for (final title in json["list"]) normalizeTitle(title, descriptionType)
      ];
    }
  }

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
