import 'duty.dart';
import 'experience.dart';
import 'organization.dart';
import 'salary_type.dart';
import 'work_type.dart';

class Job {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? name;
  String? description;
  int? salary;
  int? totalApplicants;
  int? orgId;
  int? dutyId;
  int? salaryTypeId;
  int? workTypeId;
  int? expId;
  bool? active;
  bool? special;
  Duty? duty;
  SalaryType? salaryType;
  WorkType? workType;
  Experience? experience;
  Organization? organization;

  Job({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.name,
    this.description,
    this.salary,
    this.totalApplicants,
    this.orgId,
    this.dutyId,
    this.salaryTypeId,
    this.workTypeId,
    this.expId,
    this.active,
    this.special,
    this.duty,
    this.salaryType,
    this.workType,
    this.experience,
    this.organization,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        salary: json['salary'] as int?,
        totalApplicants: json['totalApplicants'] as int?,
        orgId: json['orgId'] as int?,
        dutyId: json['dutyId'] as int?,
        salaryTypeId: json['salaryTypeId'] as int?,
        workTypeId: json['workTypeId'] as int?,
        expId: json['expId'] as int?,
        active: json['active'] as bool?,
        special: json['special'] as bool?,
        duty: json['duty'] == null
            ? null
            : Duty.fromJson(json['duty'] as Map<String, dynamic>),
        salaryType: json['salaryType'] == null
            ? null
            : SalaryType.fromJson(json['salaryType'] as Map<String, dynamic>),
        workType: json['workType'] == null
            ? null
            : WorkType.fromJson(json['workType'] as Map<String, dynamic>),
        experience: json['experience'] == null
            ? null
            : Experience.fromJson(json['experience'] as Map<String, dynamic>),
        organization: json['organization'] == null
            ? null
            : Organization.fromJson(
                json['organization'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'name': name,
        'description': description,
        'salary': salary,
        'totalApplicants': totalApplicants,
        'orgId': orgId,
        'dutyId': dutyId,
        'salaryTypeId': salaryTypeId,
        'workTypeId': workTypeId,
        'expId': expId,
        'active': active,
        'special': special,
        'duty': duty?.toJson(),
        'salaryType': salaryType?.toJson(),
        'workType': workType?.toJson(),
        'experience': experience?.toJson(),
        'organization': organization?.toJson(),
      };
}
