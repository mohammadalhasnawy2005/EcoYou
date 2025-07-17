import 'package:ecoyou/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  chekcode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;
  @override
  chekcode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }
}
