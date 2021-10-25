import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/product_controller/prodcut_controller.dart';

class ProductPage extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This  is product page"),
      ),
    );
  }
}
