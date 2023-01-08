import 'group.dart';

class Options {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  int? groupId;
  String? name;
  Group? group;

  Options({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.groupId,
    this.name,
    this.group,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        groupId: json['groupId'] as int?,
        name: json['name'] as String?,
        group: json['group'] == null
            ? null
            : Group.fromJson(json['group'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'groupId': groupId,
        'name': name,
        'group': group?.toJson(),
      };
}
