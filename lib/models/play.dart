import 'package:hogu_king_m/models/member.dart';
import 'package:json_annotation/json_annotation.dart';

import 'org.dart';

part 'play.g.dart';

@JsonSerializable()
class Play {
  String playId;
  Org organization;
  List<Member> players;
  Member hoguKing;
  String playName;
  String playDateTime;

  Play(
      {this.playId,
      this.organization,
      this.players,
      this.hoguKing,
      this.playName,
      this.playDateTime});

  factory Play.fromJson(Map<String, dynamic> json) => _$PlayFromJson(json);

  Map<String, dynamic> toJson() => _$PlayToJson(this);
}
