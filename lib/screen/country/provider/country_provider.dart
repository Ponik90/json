import 'package:flutter/material.dart';
import 'package:jason_practice/utils/helper/json_helper.dart';

import '../model/country_model.dart';

class CountryProvider with ChangeNotifier {
  JsonHelper helper = JsonHelper();
  List<CountryModel> countryList = [];

  Future<void> getCountryData()
  async {
    countryList= await helper.countryJson();
  }
}
