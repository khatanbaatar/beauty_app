class Customer {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  int? orgId;
  dynamic catId;
  dynamic imgId;
  String? amgName;
  String? sumName;
  String? orgName;
  dynamic catCd;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? roleName;
  String? password;
  String? roleIds;
  dynamic description;
  dynamic imgUrl;
  dynamic catName;
  String? name;

  Customer({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.orgId,
    this.catId,
    this.imgId,
    this.amgName,
    this.sumName,
    this.orgName,
    this.catCd,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.roleName,
    this.password,
    this.roleIds,
    this.description,
    this.imgUrl,
    this.catName,
    this.name,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        orgId: json['orgId'] as int?,
        catId: json['catId'] as dynamic,
        imgId: json['imgId'] as dynamic,
        amgName: json['amgName'] as String?,
        sumName: json['sumName'] as String?,
        orgName: json['orgName'] as String?,
        catCd: json['catCd'] as dynamic,
        username: json['username'] as String?,
        email: json['email'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        roleName: json['roleName'] as String?,
        password: json['password'] as String?,
        roleIds: json['roleIds'] as String?,
        description: json['description'] as dynamic,
        imgUrl: json['imgUrl'] as dynamic,
        catName: json['catName'] as dynamic,
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
        'catId': catId,
        'imgId': imgId,
        'amgName': amgName,
        'sumName': sumName,
        'orgName': orgName,
        'catCd': catCd,
        'username': username,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'roleName': roleName,
        'password': password,
        'roleIds': roleIds,
        'description': description,
        'imgUrl': imgUrl,
        'catName': catName,
        'name': name,
      };
}
