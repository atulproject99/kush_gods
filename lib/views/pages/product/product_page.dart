import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/product_controller/prodcut_controller.dart';
import 'package:kush_gods/contollers/product_controller/product_categories_controller.dart';

import 'package:kush_gods/views/widgets/product_categories.dart';
import 'package:kush_gods/views/widgets/product_design.dart';

class ProductPage extends StatelessWidget {
  var controller = Get.put(ProductCategoriesController());
  var productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            leading: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            centerTitle: true,
            title: Obx(
              () => Text(
                controller.categoriesName.value,
                style: TextStyle(fontSize: 16),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.asset(
                  "assets/icon/filter.png",
                  width: 30,
                  height: 30,
                  color: Colors.black,
                ),
              )
            ]),
        body: Column(
          children: [
            SizedBox(
              height: 60,
              child: GetBuilder<ProductCategoriesController>(
                  builder: (controller) {
                return ProductCategoriesDesign(itemList: controller.categories);
              }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GetBuilder<ProductController>(builder: (controller) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: StaggeredGridView.countBuilder(
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          primary: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.productList.length,
                          itemBuilder: (BuildContext context, int index) =>
                              ProductDesign(
                                      context: context,
                                      product: controller.productList[index])
                                  .productDesign,
                          staggeredTileBuilder: (int index) =>
                              StaggeredTile.fit(2),
                          mainAxisSpacing: 9.0,
                          crossAxisSpacing: 10.0,
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
