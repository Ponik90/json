import 'package:flutter/material.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

import '../model/post_json_model.dart';

class PostJsonProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  List<PostJsonModel> postJsonList = [];

  Future<void> getPostJson() async {
    postJsonList = await helper.postJson();
    notifyListeners();
  }
}
