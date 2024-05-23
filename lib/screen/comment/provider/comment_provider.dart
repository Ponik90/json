import 'package:flutter/material.dart';

import '../../../utils/helper/json_helper.dart';
import '../model/comment_json_model.dart';

class CommentProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  List<CommentJsonModel> commentJsonList = [];

  Future<void> getCommentJson() async {
    commentJsonList = await helper.commentJson();
    notifyListeners();
  }
}
