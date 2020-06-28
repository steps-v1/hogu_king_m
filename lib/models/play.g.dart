// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Play _$PlayFromJson(Map<String, dynamic> json) {
  return Play(
    playId: json['playId'] as String,
    organization: json['organization'] == null
        ? null
        : Org.fromJson(json['organization'] as Map<String, dynamic>),
    players: (json['players'] as List)
        ?.map((e) =>
            e == null ? null : Member.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hoguKing: json['hoguKing'] == null
        ? null
        : Member.fromJson(json['hoguKing'] as Map<String, dynamic>),
    playName: json['playName'] as String,
    playDateTime: json['playDateTime'] as String,
  );
}

Map<String, dynamic> _$PlayToJson(Play instance) => <String, dynamic>{
      'playId': instance.playId,
      'organization': instance.organization,
      'players': instance.players,
      'hoguKing': instance.hoguKing,
      'playName': instance.playName,
      'playDateTime': instance.playDateTime,
    };
