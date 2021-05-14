class CommonModel {
  // final String icon;
  // final String title;
  // final String url;
  // final String statusBarColor;
  // final bool hideAppBar;

  CommonModel(
      {String? icon,
      String? title,
      String? url,
      String? statusBarColor,
      bool? hideAppBar});

  factory CommonModel.fromJSON(Map<String, dynamic> json) {
    return CommonModel(
        icon: json['icon'],
        title: json['title'],
        url: json['url'],
        statusBarColor: json['statusBarColor'],
        hideAppBar: json['hideAppBar']);
  }
}
