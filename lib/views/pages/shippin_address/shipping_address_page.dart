import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/views/widgets/address_card_design.dart';

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
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  AddressCardDesign(context: context).addressCardDesign2),
        ));
  }
}
