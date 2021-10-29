import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/search_controller/search_controller.dart';
import 'package:kush_gods/views/widgets/search_item.dart';

class SearchPage extends StatelessWidget {
  var searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: const Text(
            "Search",
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Card(
                      elevation: 2,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: const TextField(
                            decoration: const InputDecoration(
                                hintText: "Search Categories",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10))),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Card(
                      color: Colors.black,
                      child: Container(
                        padding: const EdgeInsets.all(17),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GetBuilder<SearchController>(builder: (controller) {
              return Container(
                child: SearchItemDesign(
                  itemList: controller.categories,
                ),
              );
            }),
          ],
        ));
  }
}
