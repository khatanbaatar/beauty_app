import 'package:beauty_app/app/utils/common_utils.dart';

import 'user.dart';

class Review {
  dynamic regDtm;
  dynamic modDtm;
  dynamic regId;
  dynamic modId;
  bool? useYn;
  int? id;
  int? tourId;
  int? userId;
  int? rating;
  String? review;
  User? user;

  Review({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.tourId,
    this.userId,
    this.rating,
    this.review,
    this.user,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        regDtm: CommonUtils.parseDtm(json['regDtm'] as String),
        modDtm: CommonUtils.parseDtm(json['modDtm'] as String),
        regId: json['regId'] as dynamic,
        modId: json['modId'] as dynamic,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        tourId: json['tourId'] as int?,
        userId: json['userId'] as int?,
        rating: json['rating'] as int?,
        review: json['review'] as String?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'tourId': tourId,
        'userId': userId,
        'rating': rating,
        'review': review,
        'user': user?.toJson(),
      };
}

class ReviewArgs {
  String? prefix;
  int? id;
  double? avgRating;
  Map<num, num>? reviewStats;

  ReviewArgs({
    this.prefix,
    this.id,
    this.avgRating,
    this.reviewStats,
  });
}
