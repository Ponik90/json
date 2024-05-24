import 'package:flutter/material.dart';
import 'package:jason_practice/screen/todos/model/todos_model.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

class TodosProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  List<TodosModel> todosJsonList = [];

  Future<void> getTodosData() async {
    todosJsonList = await helper.todosJson();
    notifyListeners();
  }
}
