// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Org _$OrgFromJson(Map<String, dynamic> json) {
  return Org(
    id: json['id'] as String,
    name: json['name'] as String,
  )..members = (json['members'] as List)
      ?.map(
          (e) => e == null ? null : Member.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$OrgToJson(Org instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
    };
