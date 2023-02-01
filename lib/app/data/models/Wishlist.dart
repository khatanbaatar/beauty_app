class Wishlist {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  int? orgId;
  int? userId;
  String? name;

  Wishlist({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.orgId,
    this.userId,
    this.name,
  });

  factory Wishlist.fromJson(Map<String, dynamic> json) => Wishlist(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        orgId: json['orgId'] as int?,
        userId: json['userId'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'orgId': orgId,
        'userId': userId,
        'name': name,
      };
}
