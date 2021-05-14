import 'package:flutter_trip/model/common_model.dart';

class SalesBoxModel {
  SalesBoxModel(
      {String? icon,
      String? moreUrl,
      CommonModel? bigCard1,
      CommonModel? bigCard2,
      CommonModel? smallCard1,
      CommonModel? smallCard2,
      CommonModel? smallCard3,
      CommonModel? smallCard4});

  factory SalesBoxModel.fromJson(Map<String, dynamic> json) {
    return SalesBoxModel(
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      bigCard1: CommonModel.fromJson(json['bigCard1']),
      bigCard2: CommonModel.fromJson(json['bigCard2']),
      smallCard1: CommonModel.fromJson(json['smallCard1']),
      smallCard2: CommonModel.fromJson(json['smallCard2']),
      smallCard3: CommonModel.fromJson(json['smallCard3']),
      smallCard4: CommonModel.fromJson(json['smallCard4']),
    );
  }
}
