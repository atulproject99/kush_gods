import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class AppButton {
  String buttonTitle;
  BuildContext context;
  AppButton({required this.context, required this.buttonTitle});

  Card get myButton => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: Text("$buttonTitle",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );
}
