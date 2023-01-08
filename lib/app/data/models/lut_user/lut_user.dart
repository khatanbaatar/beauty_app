import 'package:beauty_app/app/data/models/order/avatar.dart';
import 'package:beauty_app/app/data/models/organization.dart';

import 'role.dart';

class LutUser {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? firstName;
  String? lastName;
  String? name;
  String? phone;
  dynamic appointedDate;
  String? imageUrl;
  String? description;
  bool? emailVerified;
  dynamic phoneVerified;
  bool? isActive;
  String? username;
  String? email;
  int? userType;
  int? orgId;
  int? catId;
  int? imgId;
  int? isPub;
  bool? enabled;
  bool? tokenExpired;
  bool? push;
  bool? alert;
  List<dynamic>? metas;
  Avatar? avatar;
  Organization? organization;
  List<dynamic>? savedLocations;
  List<Role>? roles;

  LutUser({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.firstName,
    this.lastName,
    this.name,
    this.phone,
    this.appointedDate,
    this.imageUrl,
    this.description,
    this.emailVerified,
    this.phoneVerified,
    this.isActive,
    this.username,
    this.email,
    this.userType,
    this.orgId,
    this.catId,
    this.imgId,
    this.isPub,
    this.enabled,
    this.tokenExpired,
    this.push,
    this.alert,
    this.metas,
    this.avatar,
    this.organization,
    this.savedLocations,
    this.roles,
  });

  factory LutUser.fromJson(Map<String, dynamic> json) => LutUser(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        name: json['name'] as String?,
        phone: json['phone'] as String?,
        appointedDate: json['appointedDate'] as dynamic,
        imageUrl: json['imageUrl'] as String?,
        description: json['description'] as String?,
        emailVerified: json['emailVerified'] as bool?,
        phoneVerified: json['phoneVerified'] as dynamic,
        isActive: json['isActive'] as bool?,
        username: json['username'] as String?,
        email: json['email'] as String?,
        userType: json['userType'] as int?,
        orgId: json['orgId'] as int?,
        catId: json['catId'] as int?,
        imgId: json['imgId'] as int?,
        isPub: json['isPub'] as int?,
        enabled: json['enabled'] as bool?,
        tokenExpired: json['tokenExpired'] as bool?,
        push: json['push'] as bool?,
        alert: json['alert'] as bool?,
        metas: json['metas'] as List<dynamic>?,
        avatar: json['avatar'] == null
            ? null
            : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
        organization: json['organization'] == null
            ? null
            : Organization.fromJson(
                json['organization'] as Map<String, dynamic>),
        savedLocations: json['savedLocations'] as List<dynamic>?,
        roles: (json['roles'] as List<dynamic>?)
            ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'name': name,
        'phone': phone,
        'appointedDate': appointedDate,
        'imageUrl': imageUrl,
        'description': description,
        'emailVerified': emailVerified,
        'phoneVerified': phoneVerified,
        'isActive': isActive,
        'username': username,
        'email': email,
        'userType': userType,
        'orgId': orgId,
        'catId': catId,
        'imgId': imgId,
        'isPub': isPub,
        'enabled': enabled,
        'tokenExpired': tokenExpired,
        'push': push,
        'alert': alert,
        'metas': metas,
        'avatar': avatar?.toJson(),
        'organization': organization?.toJson(),
        'savedLocations': savedLocations,
        'roles': roles?.map((e) => e.toJson()).toList(),
      };
}
