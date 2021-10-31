import 'dart:convert';

import 'package:get/get.dart';
import 'package:kush_gods/models/news.dart';
import 'package:http/http.dart' as http;
import 'package:kush_gods/models/slider.dart';
import 'package:kush_gods/services/remote_servies.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewsController extends GetxController {
  var newsList = <News>[].obs;
  dynamic currentIndex = 0.obs;

  var sliders = <Slider>[].obs;
  var isLoading = true.obs;

  var refreshController = RefreshController(initialRefresh: false).obs;

  var refreshStatus = false.obs;
  @override
  void onClose() {
    newsList.clear();
    super.onClose();
  }

  @override
  void onInit() {
    loadNews();
    loadSlider();
    super.onInit();
  }

  sliderIndex(int index) {
    currentIndex.value = index;
    print(currentIndex.value);
  }

  void loadNews() {
    Future.delayed(Duration(seconds: 1), () async {
      http.Response response = await MyApi.getNewsFeed();
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String res = data['res'];
        String msg = data['msg'];
        if (res == "success") {
          var re = data['data'] as List;

          newsList.value = re.map<News>((e) => News.fromJson(e)).toList();
        } else {}
      } else {
        //throw Exception('Failed to load album');
      }
    });
  }

  void loadSlider() {
    Future.delayed(Duration(seconds: 1), () async {
      http.Response response = await MyApi.getSlider();
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String res = data['res'];
        String msg = data['msg'];
        if (res == "success") {
          var re = data['data'] as List;
          isLoading.value = false;
          refreshController.value.refreshCompleted();
          refreshStatus.value == true ? refreshStatus.value = false : "";

          sliders.value = re.map<Slider>((e) => Slider.fromJson(e)).toList();
        } else {}
      } else {
        //throw Exception('Failed to load album');
      }
    });
  }

  refershList() {
    print("sdsd");
    loadNews();
    loadSlider();
  }
}
