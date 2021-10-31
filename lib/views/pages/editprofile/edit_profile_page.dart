import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:kush_gods/views/widgets/address_card_design.dart';
import 'package:kush_gods/views/widgets/app_button.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        centerTitle: true,
        title: const Text(
          "Edit Profiles",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 140,
                  height: 140,
                  child: Stack(children: [
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('assets/images/news1.png'),
                    ),
                    InkWell(
                      onTap: () {
                        //        getImage();
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                  width: 35,
                                  height: 35,
                                  child: const Icon(
                                    Icons.photo,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("User information",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 12)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 12)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 12)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Gender",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 12)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Phone ",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 12)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Address",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("NEW ADDRESS",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
                ],
              ),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      AddressCardDesign(context: context).addressCardDesign),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                    AppButton(context: context, buttonTitle: "Save").myButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
