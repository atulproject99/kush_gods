import 'package:get/get.dart';
import 'package:kush_gods/models/news.dart';

class NewsController extends GetxController {
  var newsList = <News>[].obs;

  @override
  void onInit() {
    loadNews();
    super.onInit();
  }

  void loadNews() {
    var list = <News>[
      News(
          title: "Maws-in-Kutch salt tablets help Europe get pure water",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounterin the light of the encounterin the light of the encounterin the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title: "Made-in-Kutch salt tablets help Europe get pure water",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title:
              "Made-in-Kutch salt tablets help Europe get pure water Europe get pure waterEurope get pure",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title: "Made-in-Kutch salt tablets help Europe get pure water",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title: "This is Fivth News",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title: "This is Sixth News",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul maurya",
          time: "2h ago"),
      News(
          title: "This is Seventh News",
          content:
              "The ASP said that the security has been tightened in villages with Maoist presence along the Telangana-Chhattisgarh border, in the light of the encounter.",
          userName: "Atul mauray",
          time: "2h ago"),
    ];
    newsList.value = list;
  }
}
