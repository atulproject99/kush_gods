import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:kush_gods/views/widgets/address_card_design.dart';
import 'package:kush_gods/views/widgets/app_button.dart';

class FirstWidget {
  static Container get firstWidget => Container(
        height: Get.size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Address",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Text("NEW ADDRESS",
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
              ],
            ),
            ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    AddressCardDesign(context: context).addressCardDesign),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: AppButton(buttonTitle: "Continue").myButton)
          ],
        ),
      );
}
