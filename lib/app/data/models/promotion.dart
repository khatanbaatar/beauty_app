class Promotion {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? name;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  String? discountType;
  dynamic discountMethod;
  dynamic periodType;
  int? amount;
  int? typeId;
  int? orgId;
  bool? active;
  bool? timeLimit;
  dynamic serviceIds;
  List<dynamic>? services;

  Promotion({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.name,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.discountType,
    this.discountMethod,
    this.periodType,
    this.amount,
    this.typeId,
    this.orgId,
    this.active,
    this.timeLimit,
    this.serviceIds,
    this.services,
  });

  factory Promotion.fromJson(Map<String, dynamic> json) => Promotion(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        startDate: json['startDate'] as String?,
        startTime: json['startTime'] as String?,
        endDate: json['endDate'] as String?,
        endTime: json['endTime'] as String?,
        discountType: json['discountType'] as String?,
        discountMethod: json['discountMethod'] as dynamic,
        periodType: json['periodType'] as dynamic,
        amount: json['amount'] as int?,
        typeId: json['typeId'] as int?,
        orgId: json['orgId'] as int?,
        active: json['active'] as bool?,
        timeLimit: json['timeLimit'] as bool?,
        serviceIds: json['serviceIds'] as dynamic,
        services: json['services'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'name': name,
        'startDate': startDate,
        'startTime': startTime,
        'endDate': endDate,
        'endTime': endTime,
        'discountType': discountType,
        'discountMethod': discountMethod,
        'periodType': periodType,
        'amount': amount,
        'typeId': typeId,
        'orgId': orgId,
        'active': active,
        'timeLimit': timeLimit,
        'serviceIds': serviceIds,
        'services': services,
      };
}
