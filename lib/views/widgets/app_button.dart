import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class AppButton {
  String buttonTitle;
  
  AppButton({ required this.buttonTitle});

  Card get myButton => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          width: Get.size.width,
          padding: EdgeInsets.all(15),
          child: Text("$buttonTitle",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
      );
}
