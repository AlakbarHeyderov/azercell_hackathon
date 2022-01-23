import 'dart:convert';

import 'package:azercell_hackathon/data/models/home_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  Future<List<HomeModel?>?> getData() async {
    var baseUrl = 'https://azercell-hackathon.herokuapp.com/api/home';
    var res = await http.get(Uri.parse(baseUrl));

    if (res.statusCode == 200) {
      print('OK');
      Iterable jsonBody = jsonDecode(res.body);

      print(jsonBody);
      return List<HomeModel>.from(
          jsonBody.map((model) => HomeModel.fromJson(model)));
    }
  }
}
