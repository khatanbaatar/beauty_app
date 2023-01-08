class RolePrivilege {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? actionButton;
  int? menuId;
  int? roleId;

  RolePrivilege({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.actionButton,
    this.menuId,
    this.roleId,
  });

  factory RolePrivilege.fromJson(Map<String, dynamic> json) => RolePrivilege(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        actionButton: json['actionButton'] as String?,
        menuId: json['menuId'] as int?,
        roleId: json['roleId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'actionButton': actionButton,
        'menuId': menuId,
        'roleId': roleId,
      };
}
