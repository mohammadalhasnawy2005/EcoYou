import 'package:ecoyou/core/class/statusrequest.dart';
import 'package:ecoyou/core/constant/routes.dart';
import 'package:ecoyou/core/function/handingdatacontroller.dart';
import 'package:ecoyou/data/datasource/remote/auth/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  void login();
  void goToSignUp();
  void goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowPassword = true;
  StatusRequest? statusRequest = StatusRequest.none;

  void showPassword() {
    isshowPassword = isshowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(password.text, email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.home, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
            title: "ُWarning",
            middleText: "Email or Password not Correct",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print("Firebase Token: $value");
      String? token = value;
    });

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
