class WorkType {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? grpCd;
  dynamic comCd;
  String? shortCd;
  String? comCdNm;
  String? comCdEn;
  int? parentId;
  int? orderId;

  WorkType({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.grpCd,
    this.comCd,
    this.shortCd,
    this.comCdNm,
    this.comCdEn,
    this.parentId,
    this.orderId,
  });

  factory WorkType.fromJson(Map<String, dynamic> json) => WorkType(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        grpCd: json['grpCd'] as String?,
        comCd: json['comCd'] as dynamic,
        shortCd: json['shortCd'] as String?,
        comCdNm: json['comCdNm'] as String?,
        comCdEn: json['comCdEn'] as String?,
        parentId: json['parentId'] as int?,
        orderId: json['orderId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'grpCd': grpCd,
        'comCd': comCd,
        'shortCd': shortCd,
        'comCdNm': comCdNm,
        'comCdEn': comCdEn,
        'parentId': parentId,
        'orderId': orderId,
      };
}
