class Coupon {
  dynamic regDtm;
  dynamic modDtm;
  dynamic regId;
  dynamic modId;
  bool? useYn;
  int? id;
  int? amount;
  int? orderId;
  int? userId;

  Coupon({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.amount,
    this.orderId,
    this.userId,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) => Coupon(
        regDtm: json['regDtm'] as dynamic,
        modDtm: json['modDtm'] as dynamic,
        regId: json['regId'] as dynamic,
        modId: json['modId'] as dynamic,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        amount: json['amount'] as int?,
        orderId: json['orderId'] as int?,
        userId: json['userId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'amount': amount,
        'orderId': orderId,
        'userId': userId,
      };
}
