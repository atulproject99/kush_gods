import 'package:get/get.dart';
import 'package:kush_gods/models/product.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() {
    var list = <Product>[
      Product(
          name: "Meetha Smosha",
          price: "\$23",
          image: "assets/images/product2.jpg",
          categoryName: "So"),
      Product(
          name: "Meetha Panner",
          price: "\$164",
          image: "assets/images/product1.jpg",
          categoryName: "So"),
      Product(
          name: "Meetha Chatni",
          price: "\$34",
          image: "assets/images/product1.jpg",
          categoryName: "So"),
      Product(
          name: "Meetha wow",
          price: "\$265",
          image: "assets/images/product2.jpg",
          categoryName: "So"),
      Product(
          name: "Meetha Xys",
          price: "\$74",
          image: "assets/images/product1.jpg",
          categoryName: "So"),
      Product(
          name:
              "Meetha sdsd Meetha sdsd Meetha sdsd Meetha sdsdMeetha sdsd Meetha sdsd",
          price: "\$65",
          image: "assets/images/product1.jpg",
          categoryName: "So"),
      Product(
          name: "Meetha Se",
          price: "\$245",
          image: "assets/images/product2.jpg",
          categoryName: "So"),
    ];
    productList.value = list;
    print(productList.length);
  }
}
