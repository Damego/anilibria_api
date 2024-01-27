import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/torrent/torrent_file.dart';

part 'torrent_metadata.g.dart';

@JsonSerializable()
class TorrentMetadata {
  String? hash;
  String? name;
  List<String>? announce;
  @JsonKey(name: 'created_timestamp')
  int? createdTimestamp;
  @JsonKey(name: 'files_list')
  List<TorrentFile> filesList;

  TorrentMetadata(this.hash, this.name, this.announce, this.createdTimestamp,
      this.filesList);

  factory TorrentMetadata.fromJson(Map<String, dynamic> json) =>
      _$TorrentMetadataFromJson(json);
}
