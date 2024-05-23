import 'package:flutter/material.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

import '../model/album_json_model.dart';

class AlbumProvider with ChangeNotifier {
  List<AlbumJsonModel> albumJsonList = [];
  JsonHelper helper = JsonHelper();

  Future<void> getAlbumList() async {
    albumJsonList = await helper.albumJson();
    notifyListeners();
  }
}
