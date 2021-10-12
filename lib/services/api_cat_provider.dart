import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_example/constants/api.dart';
import 'package:http_example/models/cat_model.dart';

class ApiManager {
  Future<CatModel> getCat() async {
    var client = http.Client();
    var catModel = null;

    try {
      var response = await client.get(Uri.parse(Strings.cat_api_url));
      if (response.statusCode == 200) {
        var jsonStringResponse = response.body;
        var jsonMap = json.decode(jsonStringResponse);
        catModel = CatModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return catModel;
    }

    return catModel;
  }
}
