import 'package:http/http.dart' as http;
import 'package:kush_gods/consts/app_constraints.dart';

class MyApi {
  static Future<http.Response> getNewsFeed() async {
    var url = Uri.parse(AppConstraints.DATA_URL);
    return await http.post(url, body: {"flag": "GetNews"});
  }

  static Future<http.Response> getSlider() async {
    var url = Uri.parse(AppConstraints.DATA_URL);
    return await http.post(url, body: {"flag": "slider"});
  }

  static Future<http.Response> getproduct() async {
    var url = Uri.parse(AppConstraints.DATA_URL);
    return await http.post(url, body: {"flag": "get_product"});
  }

  static Future<http.Response> getCategory() async {
    var url = Uri.parse(AppConstraints.DATA_URL);
    return await http.post(url, body: {"flag": "get_category"});
  }

  static Future<http.Response> getProductDetails(String productId) async {
    var url = Uri.parse(AppConstraints.DATA_URL);
    return await http 
        .post(url, body: {"product_id": productId, "flag": "product_details"});
  }

  
}
