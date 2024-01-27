import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  String? string;
  int? code; // TODO: ENUM

  Status(this.string, this.code);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
