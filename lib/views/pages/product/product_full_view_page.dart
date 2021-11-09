import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/contollers/product_controller/prodcut_controller.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/views/widgets/app_button.dart';
import 'package:kush_gods/views/widgets/product_design.dart';

class ProductFullViewPage extends StatefulWidget {
  @override
  State<ProductFullViewPage> createState() => _ProductFullViewPageState();
}

class _ProductFullViewPageState extends State<ProductFullViewPage> {
  var controller = Get.put(ProductController());

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.backgroundColor,
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 240.0,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 240.0,
                              aspectRatio: 1.0,
                              autoPlay: true,
                              reverse: false,
                              autoPlayInterval: const Duration(seconds: 3),
                              scrollDirection: Axis.horizontal,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                controller.updateSlider(index);
                              }),
                          items: controller.slder.value.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      /* decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10)), */
                                      child: Image.asset(
                                        "assets/images/produ.jpg",
                                        fit: BoxFit.fill,
                                      )),
                                );
                                // errorWidget: (context, url, error) => Icon(Icons.error),
                              },
                            );
                          }).toList(),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: controller.slder.map((url) {
                              int index = controller.slder.indexOf(url);
                              return Obx(() => Card(
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                    child: Container(
                                      width: 8.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: controller.currentPos == index
                                            ? Colors.grey
                                            : Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ));
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 20, right: 20),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Casey 1 Seater Manual Recliner in Browen Color",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ 243",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Colors",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 40,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) => Card(
                                    color: Colors.primaries[Random()
                                        .nextInt(Colors.primaries.length)],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                    ))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Find Product photographer london. Search Here Now! Get Results Now. Find Product photographer london. Search Fast. Look for More. Save Time. Right Now. Info for You. Find it Now. Useful Information. Services: Updates, Information, Web Pages, Popular Searches.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Furniture ,Accessories",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Tags",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "#Furniture ,#Chair ,#Table",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Composition and Care",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Shipping and Return ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(height: 5),
                          Text("Reviews",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "366 Reviews",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              Text.rich(TextSpan(
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  text: "4.9",
                                  children: [
                                    TextSpan(
                                      text: " out of 5.0",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade600),
                                    )
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Similar Products",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.productList.length,
                              itemBuilder: (context, index) => ProductDesign(
                                      context: context,
                                      product: controller.productList[index])
                                  .productSmallDesign,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 58,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 50,
                      height: 55,
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                  "${controller.product.value.quant.value}")),
                            ],
                          )),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller
                                        .increment(controller.product.value);
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_up_sharp,
                                    size: 25,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller
                                        .decrement(controller.product.value);
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(MyPagesName.checkoutPage);
                      },
                      child: AppButton(buttonTitle: "Add To Cart").myButton,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
