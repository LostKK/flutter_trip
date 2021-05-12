import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'https://th.wallhaven.cc/lg/8o/8ogod1.jpg',
    'https://th.wallhaven.cc/small/e7/e7z65r.jpg',
    'https://w.wallhaven.cc/full/9m/wallhaven-9mxjp8.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            height: 160,
            child: Swiper(
              itemCount: _imageUrls.length,
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(_imageUrls[index], fit: BoxFit.cover);
              },
              pagination: SwiperPagination(),
            ),
          )
        ],
      )),
    );
  }
}
