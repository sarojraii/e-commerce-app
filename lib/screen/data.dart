import 'package:flutter/material.dart';

class Data {
  String images;
  String text1;
  String text2;

  Data({
    required this.images,
    required this.text1,
    required this.text2,
  });
}

class PopularData {
  String image;
  String text3;
  String text4;

  PopularData({
    required this.image,
    required this.text3,
    required this.text4,
  });
}

class GadgetsData {
  IconData icons;
  String text;
  // bool clicked;

  GadgetsData({
    required this.icons,
    required this.text,
    // this.clicked = false,
  });
}
