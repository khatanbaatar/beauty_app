import 'package:beauty_app/app/data/models/product/product.dart';

import 'staff.dart';

class OrderItem {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  int? proId;
  int? staffId;
  bool? active;
  int? quantity;
  int? orderId;
  DateTime? start;
  DateTime? end;
  int? price;
  Staff? staff;
  Product? product;

  OrderItem({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.proId,
    this.staffId,
    this.active,
    this.quantity,
    this.orderId,
    this.start,
    this.end,
    this.price,
    this.staff,
    this.product,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        proId: json['proId'] as int?,
        staffId: json['staffId'] as int?,
        active: json['active'] as bool?,
        quantity: json['quantity'] as int?,
        orderId: json['orderId'] as int?,
        start: json['start'] == null
            ? null
            : DateTime.parse(json['start'] as String),
        end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
        price: json['price'] as int?,
        staff: json['staff'] == null
            ? null
            : Staff.fromJson(json['staff'] as Map<String, dynamic>),
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'proId': proId,
        'staffId': staffId,
        'active': active,
        'quantity': quantity,
        'orderId': orderId,
        'start': start?.toIso8601String(),
        'end': end?.toIso8601String(),
        'price': price,
        'staff': staff?.toJson(),
        'product': product?.toJson(),
      };
}
