import 'dart:async';
import 'dart:convert';

import 'package:flutter_trip/model/travel_model.dart';
import 'package:http/http.dart' as http;

///旅拍页接口

var Params = {
  "districtId": -1,
  "groupChannelCode": "tourphoto_global1",
  "type": 1,
  "lat": 34.035243900000005,
  "lon": -118.25220709999999,
  "locatedDistrictId": 0,
  "pagePara": {
    "pageIndex": 1,
    "pageSize": 10,
    "sortType": 9,
    "sortDirection": 0
  },
  "imageCutType": 1,
  "head": {
    "cid": "09031110214384579588",
    "ctok": "",
    "cver": "1.0",
    "lang": "01",
    "sid": "8888",
    "syscode": "09",
    "auth": null,
    "extension": [
      {"name": "tecode", "value": "h5"},
      {"name": "protocal", "value": "https"}
    ]
  },
  "contentType": "json"
};

class TravelDao {
  static Future<TravelItemModel> fetch(String url, Map params,
      String groupChannelCode, int pageIndex, int pageSize) async {
    Map paramsMap = params['pagePara'];
    paramsMap['pageIndex'] = pageIndex;
    paramsMap['pageSize'] = pageSize;
    params['groupChannelCode'] = groupChannelCode;
    final response = await http.post(Uri.parse(url), body: jsonEncode(params));
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder(); // fix 中文乱码
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return TravelItemModel.fromJson(result);
    } else {
      throw Exception('Failed to load travel');
    }
  }
}
