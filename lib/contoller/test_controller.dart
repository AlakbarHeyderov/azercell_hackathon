import 'package:azercell_hackathon/data/models/test_user.dart';
import 'package:azercell_hackathon/data/test_api/test.dart';
import 'package:get/get.dart';

List<UserModelData?>? _users = [];

class TestController extends GetxController {
  final myList = [].obs;
  final myList2 = [].obs;
  var say = 0.obs;
  Future getDataApi() async {
    await UserService().fetchUsers().then(
      (value) {
        if (value != null && value.data != null) {
          _users = value.data;
          say = _users!.length.obs;
        } else {}
      },
    );
  }

  Future getDataApi2() async {
    await UserService().fetchUsers().then(
      (value) {
        if (value != null && value.data != null) {
          _users = value.data;
          say = _users!.length.obs;
        } else {}
      },
    );
  }

  @override
  void onInit() async {
    await UserService().fetchUsers().then(
      (value) {
        if (value != null && value.data != null) {
          _users = value.data;
          for (var i = 0; i < _users!.length; i++) {
            myList.add(_users![i]);
          }
          say = _users!.length.obs;
        } else {}
      },
    );
    await UserService().fetchUsers2().then(
      (value) {
        if (value != null && value.data != null) {
          _users = value.data;
          for (var i = 0; i < _users!.length; i++) {
            myList2.add(_users![i]);
          }
          say = _users!.length.obs;
        } else {}
      },
    );
    update();
    super.onInit();
  }
}
