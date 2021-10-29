import 'package:get/get.dart';

class SearchController extends GetxController {
  List<String> categories = <String>[].obs;

  @override
  void onInit() {
    loadCategories();
    super.onInit();
  }

  void loadCategories() {
    var list = ["Categories1", "Categories2", "Categories3", "Categories4"];
    categories = list;
  }
}
