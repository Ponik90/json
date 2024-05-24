import 'package:flutter/material.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

class NewsProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  var news;

  void getNewsJson() {
    news = helper.newsJson();
    notifyListeners();
  }
}
