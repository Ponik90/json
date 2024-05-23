class PostJsonModel {
  String? title, body;
  int? userId, id;

  PostJsonModel({this.title, this.body, this.userId, this.id});

  factory PostJsonModel.mapToModel(Map m1) {
    return PostJsonModel(
      body: m1['body'],
      title: m1['title'],
      id: m1['id'],
      userId: m1['userId'],
    );
  }
}
