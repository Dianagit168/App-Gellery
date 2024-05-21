import 'package:clone_photo_app/model/albums_cate_model.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

// List myAlbumsPage = [{}, {}, {}];

List<AlbumsCateModel> albumsCateList = [
  AlbumsCateModel(
      cateName: 'Java',
      qty: '1',
      thumnail: 'https://education.oracle.com/file/general/p-80-java.png'),
  AlbumsCateModel(
      cateName: 'C++',
      qty: '2',
      thumnail:
          'https://pluralsight.imgix.net/paths/path-icons/c-plus-plus-93c7ddd5cc.png'),
  AlbumsCateModel(
      cateName: 'C#',
      qty: '3',
      thumnail:
          'https://www.codeguru.com/wp-content/uploads/2021/08/C-Sharp-Tutorials.png'),
  AlbumsCateModel(
      cateName: 'Dart',
      qty: '4',
      thumnail:
          'https://miro.medium.com/v2/resize:fit:900/1*U544KQDCDV30dhL_FM4nvw.jpeg'),
  // AlbumsCateModel(cateName: 'HTML', qty: '5'),
];

List<MediaAndType> mediaAndTypeData = [
  MediaAndType(title: 'Videos', qty: 480, leadingIcon: LucideIcons.video),
  MediaAndType(
      title: 'Selfies', qty: 256, leadingIcon: LucideIcons.userSquare2),
  MediaAndType(title: 'Live Photos', qty: 451, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Portrait', qty: 446, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Panoramas', qty: 7, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Time-lapse', qty: 1, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Slo-mo', qty: 8, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Bursts', qty: 7, leadingIcon: LucideIcons.video),
  MediaAndType(title: 'Screenshorts', qty: 347, leadingIcon: LucideIcons.video),
  MediaAndType(
      title: 'Screen Recordings', qty: 24, leadingIcon: LucideIcons.video),
];
List<MediaAndType> utilitiesData = [
  MediaAndType(title: 'Imports', qty: 480, leadingIcon: LucideIcons.import),
  MediaAndType(title: 'Hidden', qty: 256, leadingIcon: LucideIcons.eyeOff),
  MediaAndType(title: 'Recently Deleted', qty: 451, leadingIcon: Icons.delete_outline),
];
