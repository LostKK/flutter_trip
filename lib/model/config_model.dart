class ConfigModel {
  // final String searchUrl;

  ConfigModel({String? searchUrl});

  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    return ConfigModel(searchUrl: json['searchUrl']);
  }
}
