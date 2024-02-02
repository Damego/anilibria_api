import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'title_update.g.dart';

@JsonSerializable()
class TitleUpdateEvent implements BaseEvent {
  final Title? title;
  final Dict? diff;

  TitleUpdateEvent(this.title, this.diff);

  factory TitleUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$TitleUpdateEventFromJson(json);
}
