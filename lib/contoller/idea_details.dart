import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  final product = [].obs;
  final count = 1.obs;
  final qiymet = 0.0.obs;

  void viewProductIdeaDetails() {
    Get.toNamed('/ideaDetail');
  }

  void viewProductBusinessetails() {
    Get.toNamed('/businessdetail');
  }

  void viewProductProposal() {
    Get.toNamed('/proposal');
  }
}
