import 'package:beauty_app/app/data/models/category.dart';

import 'sub_category.dart';

class Product {
  String? regDtm;
  String? modDtm;
  int? regId;
  int? modId;
  bool? useYn;
  int? id;
  dynamic sku;
  String? name;
  int? price;
  int? promo;
  int? cost;
  int? tax;
  int? weight;
  dynamic cartDesc;
  dynamic shortDesc;
  String? longDesc;
  dynamic thumbId;
  dynamic imageId;
  dynamic unitId;
  dynamic brandId;
  int? catId;
  int? orgId;
  int? subCatId;
  int? stock;
  int? reserved;
  bool? live;
  bool? active;
  bool? limited;
  dynamic location;
  dynamic expirationDate;
  bool? hasChildren;
  int? durationHours;
  int? durationMinutes;
  int? typeId;
  dynamic cats;
  dynamic staff;
  dynamic image;
  Category? category;
  SubCategory? subCategory;
  List<dynamic>? tags;
  List<dynamic>? staffs;
  List<dynamic>? images;
  List<dynamic>? options;

  Product({
    this.regDtm,
    this.modDtm,
    this.regId,
    this.modId,
    this.useYn,
    this.id,
    this.sku,
    this.name,
    this.price,
    this.promo,
    this.cost,
    this.tax,
    this.weight,
    this.cartDesc,
    this.shortDesc,
    this.longDesc,
    this.thumbId,
    this.imageId,
    this.unitId,
    this.brandId,
    this.catId,
    this.orgId,
    this.subCatId,
    this.stock,
    this.reserved,
    this.live,
    this.active,
    this.limited,
    this.location,
    this.expirationDate,
    this.hasChildren,
    this.durationHours,
    this.durationMinutes,
    this.typeId,
    this.cats,
    this.staff,
    this.image,
    this.category,
    this.subCategory,
    this.tags,
    this.staffs,
    this.images,
    this.options,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        regDtm: json['regDtm'] as String?,
        modDtm: json['modDtm'] as String?,
        regId: json['regId'] as int?,
        modId: json['modId'] as int?,
        useYn: json['useYn'] as bool?,
        id: json['id'] as int?,
        sku: json['sku'] as dynamic,
        name: json['name'] as String?,
        price: json['price'] as int?,
        promo: json['promo'] as int?,
        cost: json['cost'] as int?,
        tax: json['tax'] as int?,
        weight: json['weight'] as int?,
        cartDesc: json['cartDesc'] as dynamic,
        shortDesc: json['shortDesc'] as dynamic,
        longDesc: json['longDesc'] as String?,
        thumbId: json['thumbId'] as dynamic,
        imageId: json['imageId'] as dynamic,
        unitId: json['unitId'] as dynamic,
        brandId: json['brandId'] as dynamic,
        catId: json['catId'] as int?,
        orgId: json['orgId'] as int?,
        subCatId: json['subCatId'] as int?,
        stock: json['stock'] as int?,
        reserved: json['reserved'] as int?,
        live: json['live'] as bool?,
        active: json['active'] as bool?,
        limited: json['limited'] as bool?,
        location: json['location'] as dynamic,
        expirationDate: json['expirationDate'] as dynamic,
        hasChildren: json['hasChildren'] as bool?,
        durationHours: json['durationHours'] as int?,
        durationMinutes: json['durationMinutes'] as int?,
        typeId: json['typeId'] as int?,
        cats: json['cats'] as dynamic,
        staff: json['staff'] as dynamic,
        image: json['image'] as dynamic,
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category'] as Map<String, dynamic>),
        subCategory: json['subCategory'] == null
            ? null
            : SubCategory.fromJson(json['subCategory'] as Map<String, dynamic>),
        tags: json['tags'] as List<dynamic>?,
        staffs: json['staffs'] as List<dynamic>?,
        images: json['images'] as List<dynamic>?,
        options: json['options'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'regDtm': regDtm,
        'modDtm': modDtm,
        'regId': regId,
        'modId': modId,
        'useYn': useYn,
        'id': id,
        'sku': sku,
        'name': name,
        'price': price,
        'promo': promo,
        'cost': cost,
        'tax': tax,
        'weight': weight,
        'cartDesc': cartDesc,
        'shortDesc': shortDesc,
        'longDesc': longDesc,
        'thumbId': thumbId,
        'imageId': imageId,
        'unitId': unitId,
        'brandId': brandId,
        'catId': catId,
        'orgId': orgId,
        'subCatId': subCatId,
        'stock': stock,
        'reserved': reserved,
        'live': live,
        'active': active,
        'limited': limited,
        'location': location,
        'expirationDate': expirationDate,
        'hasChildren': hasChildren,
        'durationHours': durationHours,
        'durationMinutes': durationMinutes,
        'typeId': typeId,
        'cats': cats,
        'staff': staff,
        'image': image,
        'category': category?.toJson(),
        'subCategory': subCategory?.toJson(),
        'tags': tags,
        'staffs': staffs,
        'images': images,
        'options': options,
      };
}
