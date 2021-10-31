//import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kush_gods/views/widgets/bottom_navigation/circular_bottom_navigation.dart';

class DashboardController extends GetxController {
  late PageController pageController;
  //late CircularBottomNavigationController navigationController;
  late MyCircularBottomNavigationController navigationController;
  var currentIndex = 0.obs;
  GlobalKey bottomNavigatioKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    print("hi");
    /*  navigationController =
        CircularBottomNavigationController(currentIndex.value); */
    navigationController =
        MyCircularBottomNavigationController(currentIndex.value);

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
