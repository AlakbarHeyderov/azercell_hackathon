import 'package:get/get.dart';

class SeeAllController extends GetxController {
  var menuIcon = true.obs;

  void openMenu() {
    if (menuIcon.value == false) {
      menuIcon.value = !menuIcon.value;
    } else {
      menuIcon.value = !menuIcon.value;
    }
  }
}
