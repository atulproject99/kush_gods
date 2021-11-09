import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/checkout_controller/checkout_controller.dart';
import 'package:kush_gods/views/widgets/app_button.dart';
import 'package:kush_gods/views/widgets/check_out_widget/first_widget.dart';
import 'package:kush_gods/views/widgets/check_out_widget/second_widget.dart';
import 'package:kush_gods/views/widgets/check_out_widget/third.widget.dart';

class CheckoutPage extends StatelessWidget {
  var controller = Get.put(CheckoutController());
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
          "Checkout",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Obx(
          () => Stepper(
            currentStep: controller.currentStep.value,
            type: StepperType.horizontal,
            onStepTapped: (step) => controller.tapped(step),
            // currentStep: controller.currentStep.value,
            // onStepContinue: controller.continued(),
            steps: [
              Step(
                  isActive: controller.currentStep == 0 ? true : false,
                  title: Text(""),
                  subtitle: Text(
                    "Perisonal Info",
                    style: TextStyle(fontSize: 10),
                  ),
                  content: FirstWidget.firstWidget),
              Step(
                  isActive: controller.currentStep == 1 ? true : false,
                  title: Text(''),
                  subtitle: Text(
                    "Payment",
                    style: TextStyle(fontSize: 10),
                  ),
                  content: SecondWidget.secondWidget),
              Step(
                  isActive: controller.currentStep == 2 ? true : false,
                  title: Text(""),
                  subtitle: Text(
                    "Confirmation",
                    style: TextStyle(fontSize: 10),
                  ),
                  content: ThirdWidget.thirdWidget)
            ],
            controlsBuilder: (BuildContext context,
                {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
              return Row(
                children: <Widget>[
                  
                ],
              );
            },
          ),
        ))
      ]),
    );
  }
}
