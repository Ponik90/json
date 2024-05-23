import 'package:flutter/material.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

import '../model/user_model.dart';

class UserProvider with ChangeNotifier
{
  JsonHelper helper = JsonHelper();
  List<UserModel> userJsonList =[];

  Future<void> getUserData()
  async {
    userJsonList = await helper.userJson();
    notifyListeners();
  }
}