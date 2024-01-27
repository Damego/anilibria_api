import 'package:anilibria_api/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule {
  /// Индекс дня недели. 0 - Понедельник 6 - Воскресенье
  final int? day;

  /// Список тайтлов в день day
  final List<Title>? list;

  Schedule(this.day, this.list);

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
