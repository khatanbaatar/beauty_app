class OrderTrack {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  int? step;
  int? userId;
  int? orderId;

  OrderTrack({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.step,
    this.userId,
    this.orderId,
  });

  factory OrderTrack.fromJson(Map<String, dynamic> json) => OrderTrack(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        step: json['step'] as int?,
        userId: json['userId'] as int?,
        orderId: json['orderId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'step': step,
        'userId': userId,
        'orderId': orderId,
      };
}
