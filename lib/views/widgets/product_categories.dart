import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/product_controller/product_categories_controller.dart';

class ProductCategoriesDesign extends StatefulWidget {
  final List<String> itemList;
  static String? sItem;

  ProductCategoriesDesign({required this.itemList});

  @override
  _ProductCategoriesDesignState createState() =>
      _ProductCategoriesDesignState();
}

String selectItem = "All";

class _ProductCategoriesDesignState extends State<ProductCategoriesDesign> {
  _buildList() {
    List<Widget> choices = [];
    widget.itemList.forEach((item) {
      choices.add(Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          child: ChoiceChip(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            label: Text(
              item,
              style: TextStyle(
                  color: ProductCategoriesDesign.sItem != null
                      ? ProductCategoriesDesign.sItem == item
                          ? Colors.white
                          : Colors.black
                      : selectItem == item
                          ? Colors.white
                          : Colors.black),
            ),
            selectedColor: Colors.black,
            padding: const EdgeInsets.all(10),
            //disabledColor: AppColor.backgroundColor,
            backgroundColor: Colors.white,
            selected: ProductCategoriesDesign.sItem != null
                ? ProductCategoriesDesign.sItem == item
                : selectItem == item,
            onSelected: (selected) {
              if (ProductCategoriesDesign.sItem != null) {
                ProductCategoriesDesign.sItem = null;
              }
              setState(() {
                selectItem = item;
                Get.find<ProductCategoriesController>()
                    .selectedCategories(item);

                print(selectItem);
              });
            },
          ),
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: _buildList());
  }

  String getSelectedItem() {
    if (ProductCategoriesDesign.sItem != null) {
      return ProductCategoriesDesign.sItem!;
    } else {
      return selectItem;
    }
  }
}
