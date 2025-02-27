import 'package:get/get.dart';

class HomeLogic extends GetxController {
  RxInt bottomNavIndex = 0.obs;
  RxInt counter = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onAdd() {
    counter.value = counter.value+1;
    // update();
  }

  void selectBottomNavigator(int selected) {
    bottomNavIndex.value = selected;
    update();
  }
}
