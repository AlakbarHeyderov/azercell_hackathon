import 'package:azercell_hackathon/data/models/home_model.dart';
import 'package:azercell_hackathon/data/service/home_data_dorce.dart';
import 'package:get/get.dart';

List<HomeModel?>? _users = [];

class HomController extends GetxController {
  var myHomeList = [].obs;
  var say = 0.obs;

  @override
  void onInit() {
    HomeService().getData().then(
      (value) {
        value!.forEach((element) {
          myHomeList.add(element);
        });
        print(value.length);
      },
    );

    super.onInit();
  }
}
