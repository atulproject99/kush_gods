import 'dart:convert';

import 'package:get/get.dart';
import 'package:kush_gods/models/product.dart';
import 'package:http/http.dart' as http;
import 'package:kush_gods/services/remote_servies.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  var slder = <String>['s', 'w', 'r'].obs;
  var currentPos = 0.obs;
  var isLoading = true.obs;

  var product = Product().obs;

  @override
  void onInit() {
    print(Get.arguments);
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() {
    Future.delayed(Duration(seconds: 1), () async {
      http.Response response = await MyApi.getproduct();
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String res = data['res'];
        String msg = data['msg'];
        if (res == "success") {
          var re = data['data'] as List;
          isLoading.value = false;
          productList.value =
              re.map<Product>((e) => Product.fromJson(e)).toList();
        } else {}
      } else {
        //throw Exception('Failed to load album');
      }
    });
  }

  updateSlider(int index) {
    currentPos.value = index;
  }

  loadProductDetails(Product product) {
    loadProduct(product.id!);
  }

  void loadProduct(String productId) {
    Future.delayed(Duration(seconds: 1), () async {
      http.Response response = await MyApi.getProductDetails(productId);
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String res = data['res'];
        String msg = data['msg'];
        if (res == "success") {
          var re = data['data'];
          isLoading.value = false;
          Product product = Product.fromJson(re);
          print(product.name);
          ;
        } else {}
      } else {
        //throw Exception('Failed to load album');
      }
    });
  }
}
