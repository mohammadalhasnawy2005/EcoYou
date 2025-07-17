import 'package:ecoyou/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  chekcode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifyCode;
  @override
  chekcode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
}
