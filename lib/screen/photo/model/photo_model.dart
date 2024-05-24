class PhotoModel {
  String? thumbnailUrl, url, title;
  int? albumId, id;

  PhotoModel({this.title, this.id, this.albumId, this.thumbnailUrl, this.url});

  factory PhotoModel.mapToModel(Map m1) {
    return PhotoModel(
      id: m1['id'],
      albumId: m1['albumId'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}
