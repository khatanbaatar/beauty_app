import 'dart:convert';

import 'package:beauty_app/app/data/models/organization/organization.dart';
import 'package:beauty_app/app/data/models/review.dart';
import 'package:beauty_app/app/data/models/user.dart';

class ResponseModel<T> {
  List<T>? data;
  Pageable? pageable;
  bool? last;
  int? totalPages;
  int? totalElements;
  bool? first;
  Sort? sort;
  int? numberOfElements;
  int? size;
  int? number;
  bool? empty;
  String? filter;
  String? title;

  ResponseModel({
    this.data,
    this.pageable,
    this.last,
    this.totalPages,
    this.totalElements,
    this.first,
    this.sort,
    this.numberOfElements,
    this.size,
    this.number,
    this.empty,
    this.filter,
    this.title,
  });

  ResponseModel.fromJson(Map<String, dynamic> json) {
    var contents = json['data'] ?? json['content'] ?? [];
    data = <T>[];
    print("Contents: $contents");
    contents.forEach((v) {
      if (T == User) {
        data?.add(User.fromJson(v) as T);
      }
      if (T == Review) {
        data?.add(Review.fromJson(v) as T);
      }
      if (T == Organization) {
        data?.add(Organization.fromJson(v) as T);
      }
    });
    pageable =
        json['pageable'] != null ? Pageable?.fromJson(json['pageable']) : null;
    last = json['last'];
    totalPages = json['totalPages'];
    totalElements = json['totalElements'] ?? json['total'];
    first = json['first'];
    sort = json['sort'] != null ? Sort?.fromJson(json['sort']) : null;
    numberOfElements = json['numberOfElements'];
    size = json['size'];
    number = json['number'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final model = <String, dynamic>{};
    if (data != null) {
      model['data'] = data?.map((v) => jsonEncode(v)).toList();
    }
    if (pageable != null) {
      model['pageable'] = pageable?.toJson();
    }
    model['last'] = last;
    model['totalPages'] = totalPages;
    model['totalElements'] = totalElements;
    model['first'] = first;
    if (sort != null) {
      model['sort'] = sort?.toJson();
    }
    model['numberOfElements'] = numberOfElements;
    model['size'] = size;
    model['number'] = number;
    model['empty'] = empty;
    return model;
  }
}

class Model {
  Model.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson() => {};
}

class Pageable {
  Sort? sort;
  int? pageNumber;
  int? pageSize;
  int? offset;
  bool? paged;
  bool? unpaged;

  Pageable(
      {this.sort,
      this.pageNumber,
      this.pageSize,
      this.offset,
      this.paged,
      this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? Sort?.fromJson(json['sort']) : null;
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    offset = json['offset'];
    paged = json['paged'];
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sort != null) {
      data['sort'] = sort?.toJson();
    }
    data['pageNumber'] = pageNumber;
    data['pageSize'] = pageSize;
    data['offset'] = offset;
    data['paged'] = paged;
    data['unpaged'] = unpaged;
    return data;
  }
}

class Sort {
  bool? sorted;
  bool? unsorted;
  bool? empty;

  Sort({this.sorted, this.unsorted, this.empty});

  Sort.fromJson(Map<String, dynamic> json) {
    sorted = json['sorted'];
    unsorted = json['unsorted'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sorted'] = sorted;
    data['unsorted'] = unsorted;
    data['empty'] = empty;
    return data;
  }
}
