import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        centerTitle: true,
        title: const Text(
          "My Shipping Address",
        ),
      ),
      body: Center(
        child: Text(
          "Comming soon",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
