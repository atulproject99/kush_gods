import 'dart:convert';

import 'package:get/get.dart';
import 'package:kush_gods/models/category.dart';
import 'package:http/http.dart' as http;
import 'package:kush_gods/services/remote_servies.dart';

class ProductCategoriesController extends GetxController {
  var categoriesName = "All".obs;
  var isLoading = true.obs;

  var  selectItem = "Video".obs;

  List<Category> categories = <Category>[].obs;

  @override
  void onInit() {
    loadCategories();
    super.onInit();
  }

  void loadCategories() {
    Future.delayed(Duration(seconds: 1), () async {
      http.Response response = await MyApi.getCategory();
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String res = data['res'];
        String msg = data['msg'];
        if (res == "success") {
          var re = data['data'] as List;
          isLoading.value = false;
          categories = re.map<Category>((e) => Category.fromJson(e)).toList();
        } else {}
      } else {
        //throw Exception('Failed to load album');
      }
    });
  }

  void selectedCategories(String item) {
    print(item);
    categoriesName.value = item;
  }
}
