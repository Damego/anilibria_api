import 'package:json_annotation/json_annotation.dart';

part 'blocked.g.dart';

@JsonSerializable()
class Blocked {
  final bool? blocked;
  final bool? bakanim;

  Blocked(this.blocked, this.bakanim);

  factory Blocked.fromJson(Map<String, dynamic> json) =>
      _$BlockedFromJson(json);
}
