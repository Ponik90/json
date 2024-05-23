class CommentJsonModel {
  int? id, postId;
  String? name, email, body;

  CommentJsonModel({
    this.id,
    this.body,
    this.name,
    this.email,
    this.postId,
  });

  factory CommentJsonModel.mapToModel(Map m1) {
    return CommentJsonModel(
      id: m1['id'],
      body: m1['body'],
      name: m1['name'],
      email: m1['email'],
      postId: m1['postId'],
    );
  }
}
