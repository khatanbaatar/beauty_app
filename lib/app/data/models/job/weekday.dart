class Weekday {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? startTime;
  String? endTime;
  int? weekday;
  int? orgId;
  bool? active;

  Weekday({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.startTime,
    this.endTime,
    this.weekday,
    this.orgId,
    this.active,
  });

  factory Weekday.fromJson(Map<String, dynamic> json) => Weekday(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        startTime: json['startTime'] as String?,
        endTime: json['endTime'] as String?,
        weekday: json['weekday'] as int?,
        orgId: json['orgId'] as int?,
        active: json['active'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'startTime': startTime,
        'endTime': endTime,
        'weekday': weekday,
        'orgId': orgId,
        'active': active,
      };
}
