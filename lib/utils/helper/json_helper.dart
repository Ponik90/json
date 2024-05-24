import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:jason_practice/screen/album/model/album_json_model.dart';
import 'package:jason_practice/screen/comment/model/comment_json_model.dart';
import 'package:jason_practice/screen/country/model/country_model.dart';
import 'package:jason_practice/screen/photo/model/photo_model.dart';
import 'package:jason_practice/screen/post/model/post_json_model.dart';
import 'package:jason_practice/screen/user/model/user_model.dart';

import '../../screen/todos/model/todos_model.dart';

class JsonHelper {
  Future<List<PostJsonModel>> postJson() async {
    String? postString = await rootBundle.loadString("assets/json/post.json");
    List postList = jsonDecode(postString);

    List<PostJsonModel> postData =
        postList.map((e) => PostJsonModel.mapToModel(e)).toList();

    return postData;
  }

  Future<List<CommentJsonModel>> commentJson() async {
    String? commentString =
        await rootBundle.loadString("assets/json/comment.json");
    List commentList = jsonDecode(commentString);

    List<CommentJsonModel> commentData =
        commentList.map((e) => CommentJsonModel.mapToModel(e)).toList();

    return commentData;
  }

  Future<List<AlbumJsonModel>> albumJson() async {
    String albumString = await rootBundle.loadString('assets/json/album.json');

    List albumList = jsonDecode(albumString);

    List<AlbumJsonModel> albumData =
        albumList.map((e) => AlbumJsonModel.mapToModel(e)).toList();

    return albumData;
  }

  Future<List<PhotoModel>> photoJson() async {
    String photoString = await rootBundle.loadString('assets/json/photo.json');

    List photoList = jsonDecode(photoString);

    List<PhotoModel> photoData =
        photoList.map((e) => PhotoModel.mapToModel(e)).toList();

    return photoData;
  }

  Future<List<TodosModel>> todosJson() async {
    String todosString = await rootBundle.loadString('assets/json/todos.json');

    List todosList = jsonDecode(todosString);

    List<TodosModel> todosData =
        todosList.map((e) => TodosModel.mapToModel(e)).toList();

    return todosData;
  }

  Future<List<UserModel>> userJson() async {
    String userString = await rootBundle.loadString("assets/json/user.json");

    List userList = jsonDecode(userString);

    List<UserModel> userData =
        userList.map((e) => UserModel.mapToModel(e)).toList();
    return userData;
  }

  Future<List<CountryModel>> countryJson() async {
    String countryString =
        await rootBundle.loadString('assets/json/country.json');

    List countryList = jsonDecode(countryString);

    List<CountryModel> countryData =
        countryList.map((e) => CountryModel.mapToModel(e)).toList();

    return countryData;
  }

  Future<void> newsJson() async {
    String newsString = await rootBundle.loadString("assets/json/news.json");

    var newsModel = jsonDecode(newsString);

    return newsModel;
  }
}
