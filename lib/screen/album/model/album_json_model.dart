class AlbumJsonModel {
  String? title;
  int? id, userId;

  AlbumJsonModel({this.id, this.title, this.userId});

  factory AlbumJsonModel.mapToModel(Map m1) {
    return AlbumJsonModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
    );
  }
}
