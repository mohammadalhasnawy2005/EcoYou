import 'package:ecoyou/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goTopageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goTopageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
