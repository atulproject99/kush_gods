import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondWidget {
  static Container get secondWidget => Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver To",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "FULL NAME",
                //contentPadding: EdgeInsets.only(bottom: 0),
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 12)),
          ),
        ],
      ));
}
