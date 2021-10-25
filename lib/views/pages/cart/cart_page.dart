import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/cart_controller/cart_controller.dart';

class CartPage extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This  is cart page"),
      ),
    );
  }
}
