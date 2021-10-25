import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/search_controller/search_controller.dart';

class SearchPage extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This  is search page"),
      ),
    );
  }
}
