import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  late PageController pageController;
  late CircularBottomNavigationController navigationController;
  var currentIndex = 0.obs;
  GlobalKey bottomNavigatioKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    print("hi");
    navigationController =
        CircularBottomNavigationController(currentIndex.value);
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
    navigationController.dispose();
  }
}
