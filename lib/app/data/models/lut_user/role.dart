import 'role_privilege.dart';

class Role {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? name;
  String? auth;
  int? accessId;
  List<RolePrivilege>? rolePrivileges;

  Role({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.name,
    this.auth,
    this.accessId,
    this.rolePrivileges,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        auth: json['auth'] as String?,
        accessId: json['accessId'] as int?,
        rolePrivileges: (json['rolePrivileges'] as List<dynamic>?)
            ?.map((e) => RolePrivilege.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'name': name,
        'auth': auth,
        'accessId': accessId,
        'rolePrivileges': rolePrivileges?.map((e) => e.toJson()).toList(),
      };
}
