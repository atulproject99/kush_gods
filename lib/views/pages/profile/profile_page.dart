import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/contollers/profile_controller/profile_controller.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/utils/routes_pages/routes_pages.dart';
import 'package:kush_gods/views/widgets/app_button.dart';
import 'package:kush_gods/views/widgets/logout_dialog.dart';
import 'package:kush_gods/views/widgets/profile_card.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 25,
        ),
        centerTitle: true,
        title: const Text("Profiles ", style: TextStyle(fontSize: 16)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/user.png"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Atul maurya",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "atul@gmail.com",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 7,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(Icons.verified_user_rounded),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "Verified",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Expanded(
                                    flex: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(MyPagesName.editProfile);
                                      },
                                      child: Card(
                                        color: Colors.black,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              bottom: 5,
                                              left: 10,
                                              right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/icon/edit.png",
                                                width: 20,
                                                height: 20,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Edit",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  Get.toNamed(MyPagesName.myOrders);
                },
                child: Container(
                  child: ProfileCard(context: context, title: "My orders")
                      .profileCard,
                )),
            InkWell(
                onTap: () {
                  Get.toNamed(MyPagesName.myFavourites);
                },
                child: Container(
                  child: ProfileCard(context: context, title: "My Favourites")
                      .profileCard,
                )),
            InkWell(
              onTap: () {
                Get.toNamed(MyPagesName.shippingAddress);
              },
              child: Container(
                child: ProfileCard(context: context, title: "Shipping Address")
                    .profileCard,
              ),
            ),
            InkWell(
                onTap: () {
                  Get.toNamed(MyPagesName.savedCards);
                },
                child: Container(
                  child: ProfileCard(context: context, title: "My Save Cards")
                      .profileCard,
                )),
            InkWell(
              onTap: () {
                Get.toNamed(MyPagesName.giftCards);
              },
              child: Container(
                child: ProfileCard(
                        context: context, title: "Gift Cards & Vouchers")
                    .profileCard,
              ),
            ),
            InkWell(
                onTap: () {
                  /* Get.dialog(LogoutPopup(context: context).dialog,
                      useSafeArea: true); */
                  Get.defaultDialog(
                      title: "ALERT",
                      titleStyle: TextStyle(fontSize: 16),
                      middleText: "Are you Sure want to Logout",
                      middleTextStyle: TextStyle(fontSize: 12),
                      cancel: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("Cancel",
                              style: TextStyle(
                                color: Colors.black,
                              ))),
                      confirm: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black, elevation: 5),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("Logout",
                              style: TextStyle(
                                color: Colors.white,
                              ))),
                      contentPadding: EdgeInsets.all(20));

                  /* cancel: AppButton(context: context, buttonTitle: "Cancel")
                          .myButton,
                      confirm:
                          AppButton(context: context, buttonTitle: "Logout")
                              .myButton); */
                },
                child: Container(
                    child: ProfileCard(context: context, title: "Logout")
                        .profileCard)),
          ],
        ),
      ),
    );
  }
}
