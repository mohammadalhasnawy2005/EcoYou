import 'package:ecoyou/core/class/statusrequest.dart';
import 'package:ecoyou/core/constant/routes.dart';
import 'package:ecoyou/core/function/handingdatacontroller.dart';
import 'package:ecoyou/data/datasource/remote/auth/verifycodesignup.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  chekcode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  late String verifyCode;

  String? email;
  StatusRequest? statusRequest;

  @override
  chekcode() {}

  @override
  goToSuccessSignUp() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.postdata(email!, verifyCode);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
          title: "ُWarning",
          middleText: "Phone Number Or Email Already Exists",
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
