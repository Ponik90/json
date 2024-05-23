class TodosModel {
  String? title;
  int? userId, id;
  bool? completed;
  TodosModel({this.title, this.id, this.userId, this.completed});

  factory TodosModel.mapToModel(Map m1) {
    return TodosModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
      completed: m1['completed'],
    );
  }
}
