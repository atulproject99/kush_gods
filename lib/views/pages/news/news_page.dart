import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/consts/app_constraints.dart';
import 'package:kush_gods/consts/app_sizes.dart';
import 'package:kush_gods/contollers/news_controller/news_controller.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/views/widgets/news_design.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        maintainBottomViewPadding: true,
        child: Scaffold(
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: AppSizes.PAGE_PADDING,
                left: AppSizes.PAGE_PADDING,
                right: AppSizes.PAGE_PADDING,
              ),
              child: SmartRefresher(
                controller: controller.refreshController.value,
                enablePullDown: true,
                //header: WaterDropHeader(),
                onRefresh: () {
                  controller.refershList();
                  print("refersh");
                },
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
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("News Feed",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                          Icon(
                            Icons.account_circle,
                            color: AppColor.iconColor,
                            size: 27,
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
                          Expanded(
                            child: Obx(
                              () => controller.isLoading == false
                                  ? Text(
                                      controller
                                              .sliders[
                                                  controller.currentIndex.value]
                                              .title! +
                                          ".",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.greyColor,
                                          fontSize: 12),
                                    )
                                  : Text(
                                      "dummy.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.greyColor,
                                          fontSize: 12),
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Obx(
                            () => controller.isLoading == false
                                ? Text(
                                    controller
                                            .sliders[
                                                controller.currentIndex.value]
                                            .date! +
                                        '.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.greyColor,
                                        fontSize: 12),
                                  )
                                : Text(
                                    "dummy time.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.greyColor,
                                        fontSize: 12),
                                  ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => controller.isLoading == false
                            ? Text(
                                controller
                                    .sliders[controller.currentIndex.value]
                                    .title!,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            : Text(
                                "sdjsjd",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                      ),
                      const SizedBox(height: 15),
                      Obx(() => Column(
                            children: [
                              CarouselSlider(
                                options: CarouselOptions(
                                    height: 180.0,
                                    aspectRatio: 3.0,
                                    autoPlay: true,
                                    reverse: false,
                                    autoPlayInterval:
                                        const Duration(seconds: 4),
                                    scrollDirection: Axis.horizontal,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      print("page no $index");
                                      controller.sliderIndex(index);
                                    }),
                                items: controller.sliders.map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () {
                                          Get.toNamed(MyPagesName.newsfullpage,
                                              arguments: [
                                                controller
                                                    .sliders[controller
                                                        .currentIndex.value]
                                                    .id,
                                              ]);
                                        },
                                        child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: /* FadeInImage.assetNetwork(
                                                  placeholder:
                                                      "assets/images/news1.png",
                                                  image:
                                                      AppConstraints.BANNER_URL +
                                                          controller
                                                              .sliders[controller
                                                                  .currentIndex
                                                                  .value]
                                                              .image!,
                                                  fit: BoxFit.fill,
                                                ) */
                                                    CachedNetworkImage(
                                                  imageUrl: AppConstraints
                                                          .BANNER_URL +
                                                      /* controller
                                                          .sliders[controller
                                                              .currentIndex
                                                              .value]
                                                          .image!, */
                                                      i.image!,
                                                  fit: BoxFit.fill,
                                                  placeholder:
                                                      (context, value) =>
                                                          Shimmer.fromColors(
                                                    child: Card(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Container(
                                                            width: MediaQuery
                                                                    .of(context)
                                                                .size
                                                                .width,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)))),
                                                    baseColor:
                                                        Colors.grey.shade300,
                                                    highlightColor:
                                                        Colors.grey.shade100,
                                                    enabled: true,
                                                    direction:
                                                        ShimmerDirection.rtl,
                                                    period:
                                                        Duration(seconds: 2),
                                                  ),
                                                ))),
                                      );
                                      // errorWidget: (context, url, error) => Icon(Icons.error),
                                    },
                                  );
                                }).toList(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: controller.sliders.map((url) {
                                    int index = controller.sliders.indexOf(url);
                                    return Obx(() => Card(
                                          //elevation: 5,
                                          //       shadowColor: Colors.black,
                                          child: Container(
                                            width: 8.0,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: controller.currentIndex ==
                                                      index
                                                  ? Colors.grey
                                                  : Color.fromRGBO(
                                                      255, 255, 255, 1),
                                            ),
                                          ),
                                        ));
                                  }).toList(),
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        height: 2,
                        thickness: 1,
                      ),
                      Obx(
                        () => ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.newsList.length,
                            itemBuilder: (BuildContext context, int index) =>
                                NewsDesign(
                                        context: context,
                                        news: controller.newsList.value[index])
                                    .newsCard),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Obx(() => controller.isLoading == true
                  ? SpinKitFadingCircle(
                      color: Colors.black,
                    )
                  : Container()),
            )
          ]),
        ));
  }
}
