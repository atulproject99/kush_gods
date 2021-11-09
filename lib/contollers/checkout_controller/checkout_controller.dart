import 'package:get/get.dart';

class CheckoutController extends GetxController {
  var currentStep = 0.obs;

  tapped(int step) {
    currentStep.value = step;
  }

  continued() {
    currentStep < 2 ? currentStep.value += 1 : null;
  }

  cancel() {
    currentStep.value > 0 ? currentStep.value -= 1 : null;
  }
}
