import 'dart:convert';
import 'package:azercell_hackathon/data/models/test_user.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String url = "https://reqres.in/api/users?page=1";
  final String url2 = "https://reqres.in/api/users?page=2";
  Future<UserModel?> fetchUsers() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var jsonBody = UserModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print("Xeta bas verdi => ${res.statusCode}");
    }
  }

  Future<UserModel?> fetchUsers2() async {
    var res = await http.get(Uri.parse(url2));
    if (res.statusCode == 200) {
      var jsonBody = UserModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print("Xeta bas verdi => ${res.statusCode}");
    }
  }
}
