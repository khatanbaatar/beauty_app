import 'package:beauty_app/app/data/models/order/avatar.dart';

class User {
  dynamic regDtm;
  String? modDtm;
  dynamic regId;
  int? modId;
  bool? useYn;
  int? id;
  String? avatarUrl;
  int? avatarId;
  bool? emailVerified;
  String? username;
  String? email;
  String? password;
  int? orgId;
  int? isPub;
  bool? enabled;
  bool? tokenExpired;
  bool? push;
  bool? alert;
  Avatar? avatar;

  User({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.avatarUrl,
    this.emailVerified,
    this.username,
    this.email,
    this.password,
    this.orgId,
    this.isPub,
    this.enabled,
    this.tokenExpired,
    this.push,
    this.alert,
    this.avatar,
  });

  User.fromJson(Map<String, dynamic> json) {
    regDtm = json['regDtm'];
    modDtm = json['modDtm'];
    regId = json['regId'];
    modId = json['modId'];
    useYn = json['useYn'];
    id = json['id'];
    avatarUrl = json['avatarUrl'];
    avatarId = json['avatarId'] as int?;
    emailVerified = json['emailVerified'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    orgId = json['orgId'];
    isPub = json['isPub'];
    enabled = json['enabled'] ?? false;
    tokenExpired = json['tokenExpired'];
    push = json['push'];
    alert = json['alert'];
    avatar = json['avatar'] == null
        ? null
        : Avatar.fromJson(json['avatar'] as Map<String, dynamic>);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['regDtm'] = regDtm;
    data['modDtm'] = modDtm;
    data['regId'] = regId;
    data['modId'] = modId;
    data['useYn'] = useYn;
    data['id'] = id;
    data['avatarUrl'] = avatarUrl;
    data['emailVerified'] = emailVerified;
    data['username'] = username;
    data['password'] = password;
    data['email'] = email;
    data['orgId'] = orgId;
    data['avatarId'] = avatarId;
    data['isPub'] = isPub;
    data['enabled'] = enabled;
    data['tokenExpired'] = tokenExpired;
    data['push'] = push;
    data['alert'] = alert;
    return data;
  }
}
