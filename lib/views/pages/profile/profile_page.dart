import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/profile_controller/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This  is profile page"),
      ),
    );
  }
}
