import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/contollers/dashboard_controller/dashboard_controller.dart';
import 'package:kush_gods/views/pages/cart/cart_page.dart';
import 'package:kush_gods/views/pages/news/news_page.dart';
import 'package:kush_gods/views/pages/product/product_page.dart';
import 'package:kush_gods/views/pages/profile/profile_page.dart';
import 'package:kush_gods/views/pages/search/search_page.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            physics:
                const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            children: [
              NewsPage(),
              ProductPage(),
              SearchPage(),
              CartPage(),
              ProfilePage()
            ],
            controller: controller.pageController,
          ),
        ),
        /*  bottomNavigationBar: Obx(
        () => FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: ''),
            TabData(iconData: Icons.home, title: ''),
            TabData(iconData: Icons.home, title: ''),
            TabData(iconData: Icons.home, title: ''),
          ],
          onTabChangedListener: (position) {
            controller.currentIndex.value = position;
            controller.pageController.jumpToPage(position);
          },
          initialSelection: controller.currentIndex.value,
          key: controller.bottomNavigatioKey,
          
        ),
      ), */
        bottomNavigationBar: Obx(
          () => CircularBottomNavigation(
            [
              TabItem(Icons.perm_media, "", AppColor.bottomitemColor),
              TabItem(Icons.category_rounded, "", AppColor.bottomitemColor),
              TabItem(Icons.search, "", AppColor.bottomitemColor),
              TabItem(Icons.shopping_cart, "", AppColor.bottomitemColor),
              TabItem(Icons.person, "", AppColor.bottomitemColor),
            ],
            controller: controller.navigationController,
            selectedPos: controller.currentIndex.value,
            normalIconColor: Colors.black,
            barHeight: 60,
            iconsSize: 25,
            barBackgroundColor: Colors.white,
            circleStrokeWidth: 0,
            selectedCallback: (int position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
          ),
        ));
  }
}
