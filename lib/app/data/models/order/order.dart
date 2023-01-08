import 'package:beauty_app/app/data/models/organization.dart';

import 'customer.dart';
import 'order_item.dart';
import 'order_track.dart';

class Order {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? code;
  String? startDt;
  int? prePayment;
  int? orgId;
  int? userId;
  dynamic proId;
  dynamic staffId;
  bool? active;
  Organization? organization;
  Customer? customer;
  List<OrderItem>? orderItems;
  List<OrderTrack>? orderTracks;

  Order({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.code,
    this.startDt,
    this.prePayment,
    this.orgId,
    this.userId,
    this.proId,
    this.staffId,
    this.active,
    this.organization,
    this.customer,
    this.orderItems,
    this.orderTracks,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        code: json['code'] as String?,
        startDt: json['startDt'] as String?,
        prePayment: json['prePayment'] as int?,
        orgId: json['orgId'] as int?,
        userId: json['userId'] as int?,
        proId: json['proId'] as dynamic,
        staffId: json['staffId'] as dynamic,
        active: json['active'] as bool?,
        organization: json['organization'] == null
            ? null
            : Organization.fromJson(
                json['organization'] as Map<String, dynamic>),
        customer: json['customer'] == null
            ? null
            : Customer.fromJson(json['customer'] as Map<String, dynamic>),
        orderItems: (json['orderItems'] as List<dynamic>?)
            ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
            .toList(),
        orderTracks: (json['orderTracks'] as List<dynamic>?)
            ?.map((e) => OrderTrack.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'code': code,
        'startDt': startDt,
        'prePayment': prePayment,
        'orgId': orgId,
        'userId': userId,
        'proId': proId,
        'staffId': staffId,
        'active': active,
        'organization': organization?.toJson(),
        'customer': customer?.toJson(),
        'orderItems': orderItems?.map((e) => e.toJson()).toList(),
        'orderTracks': orderTracks?.map((e) => e.toJson()).toList(),
      };
}
