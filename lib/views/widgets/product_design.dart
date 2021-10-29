import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kush_gods/contollers/product_controller/product_categories_controller.dart';
import 'package:kush_gods/models/product.dart';

class ProductDesign {
  BuildContext context;
  Product product;
  ProductDesign({required this.context, required this.product});

  Widget get productDesign => Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        repeat: ImageRepeat.noRepeat,
                        fit: BoxFit.fill,
                        image: AssetImage("${product.image}"))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${product.name}",
              maxLines: 2,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            ),
            SizedBox(height: 10),
            Text(
              "${product.price}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
