import 'package:ecoyou/controller/auth/logincontroller.dart';
import 'package:ecoyou/core/class/statusrequest.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/core/function/alertexitapp.dart';
import 'package:ecoyou/core/function/validinput.dart';
import 'package:ecoyou/view/widget/auth/custombuttonauth.dart';
import 'package:ecoyou/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoyou/view/widget/auth/customtextformauth.dart';
import 'package:ecoyou/view/widget/auth/customtexttitle.dart';
import 'package:ecoyou/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          "Sign In",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder:
              (controller) =>
                  controller.statusRequest == StatusRequest.loading
                      ? Center(child: Text("Loading.........."))
                      : Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: controller.formstate,
                          child: ListView(
                            children: [
                              const SizedBox(height: 20.0),
                              CustomTextTitleAuth(title: "Welcome Back"),
                              const SizedBox(height: 10.0),
                              CustomTextBodyAuth(
                                text: "Sign in to continue to EcoYou",
                              ),
                              const SizedBox(height: 70),
                              CustomTextFormAuth(
                                isNumber: false,
                                valid: (val) {
                                  return validInput(val!, 5, 100, "email");
                                },
                                hintText: "Enter your email",
                                icon: Icons.email_outlined,
                                labelText: "Email",
                                mycontroller: controller.email,
                              ),
                              const SizedBox(height: 20.0),
                              GetBuilder<LoginControllerImp>(
                                builder:
                                    (controller) => CustomTextFormAuth(
                                      onTapIocn: () {
                                        controller.showPassword();
                                      },
                                      obscureText: controller.isshowPassword,
                                      isNumber: false,
                                      valid: (val) {
                                        return validInput(
                                          val!,
                                          8,
                                          30,
                                          "password",
                                        );
                                      },
                                      hintText: "Enter your password",
                                      icon: Icons.remove_red_eye,
                                      labelText: "Password",
                                      mycontroller: controller.password,
                                    ),
                              ),
                              const SizedBox(height: 20.0),
                              InkWell(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                                child: Text(
                                  "Forgot Password?",
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              CustomButtonAuth(
                                text: "Sign In",
                                onPressed: () {
                                  controller.login();
                                },
                              ),
                              const SizedBox(height: 20.0),
                              CustomTextSignUpOrSignIn(
                                textone: "Don't have an account?",
                                texttwo: " Sign Up",
                                onTap: () {
                                  controller.goToSignUp();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
        ),
      ),
    );
  }
}
