import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressCardDesign {
  final BuildContext context;
  AddressCardDesign({required this.context});

  Widget get addressCardDesign => Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Charish k.Kelfer",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Mrs Smith 71 Cherry Court SOUTHAMPTON SO53 5PD UK",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Radio(value: "", groupValue: "", onChanged: (value) {})
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              height: 2,
              thickness: 1,
            ),
          ],
        ),
      );

  Widget get addressCardDesign2 => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Charish k.Kelfer",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Mrs Smith 71 Cherry Court SOUTHAMPTON SO53 5PD UK ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("+23232323423",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Radio(value: "", groupValue: "", onChanged: (value) {})
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
}
