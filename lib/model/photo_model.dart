import 'package:flutter/material.dart';

class PhotoModel {
  final String image;
  final String title;
  final String subTitle;
  final MainAxisAlignment mainColum;
  final MainAxisAlignment mainRow;

  PhotoModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.mainColum,
    required this.mainRow,
  });
}
