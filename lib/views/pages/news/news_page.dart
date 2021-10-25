import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/news_controller/news_controller.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This  is news feed"),
      ),
    );
  }
}
