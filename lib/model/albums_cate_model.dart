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
