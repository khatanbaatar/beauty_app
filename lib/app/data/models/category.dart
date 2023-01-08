class Category {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  String? name;
  String? slug;
  dynamic parentId;
  dynamic orgId;
  int? catType;
  bool? feature;
  bool? expanded;
  bool? hasChildren;
  List<Category>? categories;

  Category({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.name,
    this.slug,
    this.parentId,
    this.orgId,
    this.catType,
    this.feature,
    this.expanded,
    this.hasChildren,
    this.categories,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        parentId: json['parentId'] as dynamic,
        orgId: json['orgId'] as dynamic,
        catType: json['catType'] as int?,
        feature: json['feature'] as bool?,
        expanded: json['expanded'] as bool?,
        hasChildren: json['hasChildren'] as bool?,
        categories: json['categories'] as List<Category>?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'name': name,
        'slug': slug,
        'parentId': parentId,
        'orgId': orgId,
        'catType': catType,
        'feature': feature,
        'expanded': expanded,
        'hasChildren': hasChildren,
        'categories': categories,
      };
}
