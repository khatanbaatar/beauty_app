class Avatar {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? name;
  String? filePath;
  String? fileSaveNm;
  String? mimeType;
  String? uri;
  dynamic location;
  int? fileSize;
  dynamic fileType;
  String? type;
  int? size;
  int? proType;
  dynamic formId;

  Avatar({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.name,
    this.filePath,
    this.fileSaveNm,
    this.mimeType,
    this.uri,
    this.location,
    this.fileSize,
    this.fileType,
    this.type,
    this.size,
    this.proType,
    this.formId,
  });

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        filePath: json['filePath'] as String?,
        fileSaveNm: json['fileSaveNm'] as String?,
        mimeType: json['mimeType'] as String?,
        uri: json['uri'] as String?,
        location: json['location'] as dynamic,
        fileSize: json['fileSize'] as int?,
        fileType: json['fileType'] as dynamic,
        type: json['type'] as String?,
        size: json['size'] as int?,
        proType: json['proType'] as int?,
        formId: json['formId'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'name': name,
        'filePath': filePath,
        'fileSaveNm': fileSaveNm,
        'mimeType': mimeType,
        'uri': uri,
        'location': location,
        'fileSize': fileSize,
        'fileType': fileType,
        'type': type,
        'size': size,
        'proType': proType,
        'formId': formId,
      };
}
