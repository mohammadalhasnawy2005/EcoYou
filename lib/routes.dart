import 'package:ecoyou/core/constant/routes.dart';
import 'package:ecoyou/core/middleware/mymiddleware.dart';
import 'package:ecoyou/testview.dart';
import 'package:ecoyou/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecoyou/view/screen/auth/login.dart';
import 'package:ecoyou/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecoyou/view/screen/auth/signup.dart';
import 'package:ecoyou/view/screen/auth/forgetpassword/sucssesresetpassword.dart';
import 'package:ecoyou/view/screen/auth/sucssessignup.dart';
import 'package:ecoyou/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecoyou/view/screen/auth/verifycodesignup.dart';
import 'package:ecoyou/view/screen/onboarding.dart';
import 'package:get/get_navigation/get_navigation.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: () => const TestView()),

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  // GetPage(
  //   name: "/",
  //   page: () => const OnBoarding(),
  //   middlewares: [MyMiddleware()],
  // ),
  GetPage(
    name: AppRoute.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
    name: AppRoute.verifyCodeSignUp,
    page: () => const VerifyCodeSignUp(),
  ),
];

// هذا الدفلت مال الفلتر القديم حدثته للفوك مال الكيت اكس
// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signup: (context) => const SignUp(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.verifyCode: (context) => const VerifyCode(),
//   AppRoute.onboarding: (context) => const OnBoarding(),
//   AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
// };
