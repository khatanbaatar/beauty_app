import 'package:beauty_app/app/data/models/order/avatar.dart';

import 'location.dart';

class Organization {
  String? createdAt;
  String? updatedAt;
  bool? useYn;
  num? createdBy;
  num? updatedBy;
  num? id;
  String? name;
  String? phone;
  String? web;
  dynamic mobile;
  String? email;
  dynamic facebook;
  dynamic instagram;
  dynamic description;
  dynamic timezone;
  dynamic ipAddress;
  dynamic macAddress;
  dynamic printerType;
  num? typeId;
  num? copyCount;
  num? timeInterval;
  num? chargeVatPercentage;
  num? pointGainPercentage;
  bool? notificationEmail;
  bool? notificationText;
  bool? chargeVat;
  bool? emailFromUs;
  num? amgId;
  num? sumId;
  dynamic imgId;
  dynamic bagId;
  Location? aimag;
  Location? soum;
  Avatar? avatar;
  List<dynamic>? categories;
  List<dynamic>? images;
  List<dynamic>? weekdays;

  Organization({
    this.createdAt,
    this.updatedAt,
    this.useYn,
    this.createdBy,
    this.updatedBy,
    this.id,
    this.name,
    this.phone,
    this.web,
    this.mobile,
    this.email,
    this.facebook,
    this.instagram,
    this.description,
    this.timezone,
    this.ipAddress,
    this.macAddress,
    this.printerType,
    this.typeId,
    this.copyCount,
    this.timeInterval,
    this.chargeVatPercentage,
    this.pointGainPercentage,
    this.notificationEmail,
    this.notificationText,
    this.chargeVat,
    this.emailFromUs,
    this.amgId,
    this.sumId,
    this.imgId,
    this.bagId,
    this.aimag,
    this.soum,
    this.avatar,
    this.categories,
    this.images,
    this.weekdays,
  });

  factory Organization.fromJson(Map<String, dynamic> json) => Organization(
        createdAt: json['createdAt'] as String?,
        updatedAt: json['updatedAt'] as String?,
        useYn: json['useYn'] as bool?,
        createdBy: json['createdBy'] as num?,
        updatedBy: json['updatedBy'] as num?,
        id: json['id'] as num?,
        name: json['name'] as String?,
        phone: json['phone'] as String?,
        web: json['web'] as String?,
        mobile: json['mobile'] as dynamic,
        email: json['email'] as String?,
        facebook: json['facebook'] as dynamic,
        instagram: json['instagram'] as dynamic,
        description: json['description'] as dynamic,
        timezone: json['timezone'] as dynamic,
        ipAddress: json['ipAddress'] as dynamic,
        macAddress: json['macAddress'] as dynamic,
        printerType: json['printerType'] as dynamic,
        typeId: json['typeId'] as num?,
        copyCount: json['copyCount'] as num?,
        timeInterval: json['timeInterval'] as num?,
        chargeVatPercentage: json['chargeVatPercentage'] as num?,
        pointGainPercentage: json['pointGainPercentage'] as num?,
        notificationEmail: json['notificationEmail'] as bool?,
        notificationText: json['notificationText'] as bool?,
        chargeVat: json['chargeVat'] as bool?,
        emailFromUs: json['emailFromUs'] as bool?,
        amgId: json['amgId'] as num?,
        sumId: json['sumId'] as num?,
        imgId: json['imgId'] as dynamic,
        bagId: json['bagId'] as dynamic,
        aimag: json['aimag'] == null
            ? null
            : Location.fromJson(json['aimag'] as Map<String, dynamic>),
        soum: json['soum'] == null
            ? null
            : Location.fromJson(json['soum'] as Map<String, dynamic>),
        avatar: json['avatar'] == null
            ? null
            : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
        categories: json['categories'] as List<dynamic>?,
        images: json['images'] as List<dynamic>?,
        weekdays: json['weekdays'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'useYn': useYn,
        'createdBy': createdBy,
        'updatedBy': updatedBy,
        'id': id,
        'name': name,
        'phone': phone,
        'web': web,
        'mobile': mobile,
        'email': email,
        'facebook': facebook,
        'instagram': instagram,
        'description': description,
        'timezone': timezone,
        'ipAddress': ipAddress,
        'macAddress': macAddress,
        'printerType': printerType,
        'typeId': typeId,
        'copyCount': copyCount,
        'timeInterval': timeInterval,
        'chargeVatPercentage': chargeVatPercentage,
        'pointGainPercentage': pointGainPercentage,
        'notificationEmail': notificationEmail,
        'notificationText': notificationText,
        'chargeVat': chargeVat,
        'emailFromUs': emailFromUs,
        'amgId': amgId,
        'sumId': sumId,
        'imgId': imgId,
        'bagId': bagId,
        'aimag': aimag?.toJson(),
        'soum': soum?.toJson(),
        'avatar': avatar,
        'categories': categories,
        'images': images,
        'weekdays': weekdays,
      };
}
