import 'package:azercell_hackathon/contoller/app_controller.dart';
import 'package:azercell_hackathon/contoller/bottom_navigation_bar.dart';
import 'package:azercell_hackathon/contoller/home_controller.dart';
import 'package:azercell_hackathon/contoller/idea_details.dart';
import 'package:azercell_hackathon/contoller/main_controller.dart';
import 'package:azercell_hackathon/contoller/test_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<TakePhotoController>(() => TakePhotoController());
    Get.put<AppController>(AppController());
    Get.put<BottomNavigationBarController>(BottomNavigationBarController());
    Get.put<MainController>(MainController());
    Get.put<HomController>(HomController());
    Get.put<TestController>(TestController());
    Get.put<ProductDetailController>(ProductDetailController());
  }
}
