import 'package:ecoyou/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  chekemail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  chekemail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
      Get.offNamed(AppRoute.verifyCode);
    } else {
      print("invalid");
    }
  }

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
