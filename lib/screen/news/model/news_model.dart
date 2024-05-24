class NewsModel {
  int? totalResults;
  String? status;

  List<ArticlesModel>? articlesModel = [];

  NewsModel({this.status, this.totalResults, this.articlesModel});

  factory NewsModel.mapToModel(Map m1) {
    return NewsModel(
      status: m1['status'],
      totalResults: m1['totalResults'],
    );
  }
}

class ArticlesModel {
  SourceModel? sourceModel;
  String? author, title;

  ArticlesModel({this.author, this.title, this.sourceModel});

  factory ArticlesModel.mapToModel(Map m1) {
    return ArticlesModel(
      title: m1['title'],
      author: m1['author'],
      sourceModel: m1['source'],
    );
  }
}

class SourceModel {
  String? id, name;

  SourceModel({this.name, this.id});

  factory SourceModel.mapToModel(Map m1) {
    return SourceModel(
      name: m1['name'],
      id: m1['id'],
    );
  }
}
