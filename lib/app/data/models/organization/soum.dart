import 'hibernate_lazy_initializer.dart';
import 'tp_as_cd.dart';

class Soum {
  dynamic createdAt;
  dynamic updatedAt;
  bool? useYn;
  dynamic createdBy;
  dynamic updatedBy;
  int? id;
  String? asCd;
  String? staCode;
  String? cdNm;
  String? cdNmEng;
  int? parentId;
  dynamic center;
  double? longitude;
  double? latitude;
  dynamic icon;
  TpAsCd? tpAsCd;

  Soum({
    this.createdAt,
    this.updatedAt,
    this.useYn,
    this.createdBy,
    this.updatedBy,
    this.id,
    this.asCd,
    this.staCode,
    this.cdNm,
    this.cdNmEng,
    this.parentId,
    this.center,
    this.longitude,
    this.latitude,
    this.icon,
    this.tpAsCd,
  });

  factory Soum.fromJson(Map<String, dynamic> json) => Soum(
        createdAt: json['createdAt'] as dynamic,
        updatedAt: json['updatedAt'] as dynamic,
        useYn: json['useYn'] as bool?,
        createdBy: json['createdBy'] as dynamic,
        updatedBy: json['updatedBy'] as dynamic,
        id: json['id'] as int?,
        asCd: json['asCd'] as String?,
        staCode: json['staCode'] as String?,
        cdNm: json['cdNm'] as String?,
        cdNmEng: json['cdNmEng'] as String?,
        parentId: json['parentId'] as int?,
        center: json['center'] as dynamic,
        longitude: (json['longitude'] as num?)?.toDouble(),
        latitude: (json['latitude'] as num?)?.toDouble(),
        icon: json['icon'] as dynamic,
        tpAsCd: json['tpAsCd'] == null
            ? null
            : TpAsCd.fromJson(json['tpAsCd'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'useYn': useYn,
        'createdBy': createdBy,
        'updatedBy': updatedBy,
        'id': id,
        'asCd': asCd,
        'staCode': staCode,
        'cdNm': cdNm,
        'cdNmEng': cdNmEng,
        'parentId': parentId,
        'center': center,
        'longitude': longitude,
        'latitude': latitude,
        'icon': icon,
        'tpAsCd': tpAsCd?.toJson(),
      };
}
