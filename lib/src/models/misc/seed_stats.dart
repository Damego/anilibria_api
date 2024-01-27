import 'package:json_annotation/json_annotation.dart';

part 'seed_stats.g.dart';

@JsonSerializable()
class SeedStats {
  final String? user;
  final int? downloaded;
  final int? uploaded;

  SeedStats(this.user, this.downloaded, this.uploaded);

  factory SeedStats.fromJson(Map<String, dynamic> json) =>
      _$SeedStatsFromJson(json);
}
