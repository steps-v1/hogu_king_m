import 'package:json_annotation/json_annotation.dart';

import 'member.dart';

part 'org.g.dart';

@JsonSerializable()
class Org {
  String id;
  String name;

  List<Member> members;

  Org({this.id, this.name});

  factory Org.fromJson(Map<String, dynamic> json) => _$OrgFromJson(json);

  Map<String, dynamic> toJson() => _$OrgToJson(this);
}
