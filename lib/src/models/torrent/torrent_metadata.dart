import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/torrent/torrent_file.dart';

part 'torrent_metadata.g.dart';

@JsonSerializable()
class TorrentMetadata {
  final String? hash;
  final String? name;
  final List<String>? announce;
  @JsonKey(name: 'created_timestamp')
  final int? createdTimestamp;
  @JsonKey(name: 'files_list')
  final List<TorrentFile> filesList;

  TorrentMetadata(this.hash, this.name, this.announce, this.createdTimestamp,
      this.filesList);

  factory TorrentMetadata.fromJson(Map<String, dynamic> json) =>
      _$TorrentMetadataFromJson(json);
}
