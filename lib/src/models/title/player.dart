import 'package:json_annotation/json_annotation.dart';

import 'rutube_episode.dart';
import 'episode.dart';
import 'episodes.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  @JsonKey(name: 'alternative_player')
  String? alternativePlayer;
  String? host;
  Episodes? episodes;
  Map<String, Episode>? list; // union types???????????
  Map<String, RutubeEpisode> rutube;

  Player(
      this.alternativePlayer, this.host, this.episodes, this.list, this.rutube);

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
