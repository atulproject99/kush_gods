import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/consts/app_sizes.dart';
import 'package:kush_gods/contollers/news_controller/news_controller.dart';
import 'package:kush_gods/views/widgets/news_design.dart';

List<String> sliderImage = ["assets/images/news1.png"];

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(
          top: AppSizes.PAGE_PADDING,
          left: AppSizes.PAGE_PADDING,
          right: AppSizes.PAGE_PADDING,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 2.0),
                        child: Text("May 17,2021",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("News Feed",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  )),
                  Icon(
                    Icons.account_circle,
                    color: AppColor.iconColor,
                    size: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: AppColor.iconColor2,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Atul maurya .",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: AppColor.greyColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2h ago.",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: AppColor.greyColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Telangana: Rs 1,000 crore defence facility to come up in Zaheerabad",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 15),
              CarouselSlider(
                options: CarouselOptions(
                    height: 180.0,
                    aspectRatio: 3.0,
                    autoPlay: true,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {}),
                items: sliderImage.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              "assets/images/news1.png",
                              fit: BoxFit.fill,
                            )),
                      );
                      // errorWidget: (context, url, error) => Icon(Icons.error),
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.newsList.length,
                  itemBuilder: (BuildContext context, int index) => NewsDesign(
                          context: context,
                          news: controller.newsList.value[index])
                      .newsCard),
            ],
          ),
        ),
      )),
    );
  }
}
