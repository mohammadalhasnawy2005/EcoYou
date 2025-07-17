import 'package:ecoyou/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goTopageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goTopageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
