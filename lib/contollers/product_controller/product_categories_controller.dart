import 'package:get/get.dart';

class ProductCategoriesController extends GetxController {
  var categoriesName = "All".obs;

  List<String> categories = <String>[].obs;

  @override
  void onInit() {
    loadCategories();
    super.onInit();
  }

  void loadCategories() {
    var list = ["All", "Sofa Set", "Cat1", "Cat2"];
    categories = list;
  }

  void selectedCategories(String item) {
    print(item);
    categoriesName.value = item;
  }
}
