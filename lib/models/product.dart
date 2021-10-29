import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String price;
  final String image;
  final String categoryName;
  Product(
      {required this.name,
      required this.price,
      required this.image,
      required this.categoryName});
}
