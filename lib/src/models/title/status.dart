import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  final String? string;
  final int? code; // TODO: ENUM

  Status(this.string, this.code);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
