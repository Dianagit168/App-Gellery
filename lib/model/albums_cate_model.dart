import 'package:flutter/material.dart';

class AlbumsCateModel {
  final String cateName;
  final String qty;
  final String thumnail;

  AlbumsCateModel(
      {required this.thumnail, required this.cateName, required this.qty});
}

class MyAlbumsPageModel {
  final List albumsPage;

  MyAlbumsPageModel({required this.albumsPage});
}

class MediaAndType {
  final String title;
  final num qty;
  final IconData leadingIcon;

  MediaAndType(
      {required this.title, required this.qty, required this.leadingIcon});
}
