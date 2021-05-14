//首页网格卡片模型
import 'package:flutter_trip/model/common_model.dart';

class GridNavModel {
  GridNavModel({GridNavItem? hotel, GridNavItem? flight, GridNavItem? travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return GridNavModel(
          hotel: GridNavItem.fromJson(json['hotel']),
          flight: GridNavItem.fromJson(json['flight']),
          travel: GridNavItem.fromJson(json['travel']));
    } else {
      return GridNavModel();
    }
  }
}

class GridNavItem {
  GridNavItem(
      {String? startColor,
      String? endColor,
      CommonModel? mainItem,
      CommonModel? item1,
      CommonModel? item2,
      CommonModel? item3,
      CommonModel? item4});

  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
        startColor: json['startColor'],
        endColor: json['endColor'],
        mainItem: json['mainItem'],
        item1: CommonModel.fromJson(json['item1']),
        item2: CommonModel.fromJson(json['item2']),
        item3: CommonModel.fromJson(json['item3']),
        item4: CommonModel.fromJson(json['item']));
  }
}
