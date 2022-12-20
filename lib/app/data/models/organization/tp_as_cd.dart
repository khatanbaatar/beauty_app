import 'hibernate_lazy_initializer.dart';

class TpAsCd {
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
  dynamic parentId;
  dynamic center;
  double? longitude;
  double? latitude;
  String? icon;
  dynamic tpAsCd;

  TpAsCd({
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

  factory TpAsCd.fromJson(Map<String, dynamic> json) => TpAsCd(
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
        parentId: json['parentId'] as dynamic,
        center: json['center'] as dynamic,
        longitude: (json['longitude'] as num?)?.toDouble(),
        latitude: (json['latitude'] as num?)?.toDouble(),
        icon: json['icon'] as String?,
        tpAsCd: json['tpAsCd'] as dynamic,
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
        'tpAsCd': tpAsCd,
      };
}
