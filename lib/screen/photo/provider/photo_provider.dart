import 'package:flutter/material.dart';
import 'package:jason_practice/screen/photo/model/photo_model.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

class PhotoProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  List<PhotoModel> photoJsonList = [];

  Future<void> getPhotoList() async {
    photoJsonList = await helper.photoJson();
    notifyListeners();
  }
}
