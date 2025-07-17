import 'package:ecoyou/controller/auth/signupcontroller.dart';
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

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          "Sign Up",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const SizedBox(height: 20.0),
                CustomTextTitleAuth(title: "Welcome Back"),
                const SizedBox(height: 10.0),
                CustomTextBodyAuth(text: "Sign up to continue to EcoYou"),
                const SizedBox(height: 70),
                CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  hintText: "Enter your email",
                  icon: Icons.email_outlined,
                  labelText: "Email",
                  mycontroller: controller.email,
                  isNumber: false,
                ),
                const SizedBox(height: 20.0),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 8, 30, "password");
                  },
                  hintText: "Enter your password",
                  icon: Icons.lock_outline,
                  labelText: "Password",
                  mycontroller: controller.password,
                ),
                const SizedBox(height: 20.0),
                CustomTextFormAuth(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 10, 15, "phone");
                  },
                  hintText: "Enter your phone number",
                  icon: Icons.phone_outlined,
                  labelText: "Phone Number",
                  mycontroller: controller.phone,
                ),
                const SizedBox(height: 20.0),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 20, "username");
                  },
                  hintText: "Enter your username",
                  icon: Icons.person_outline,
                  labelText: "Username",
                  mycontroller: controller.username,
                ),
                const SizedBox(height: 20.0),
                Text("Forgot Password?", textAlign: TextAlign.end),
                const SizedBox(height: 20.0),
                CustomButtonAuth(
                  text: "Sign Up",
                  onPressed: () {
                    controller.signUp();
                  },
                ),
                const SizedBox(height: 20.0),
                CustomTextSignUpOrSignIn(
                  textone: "you already have an account?",
                  texttwo: " Sign In",
                  onTap: () {
                    controller.goToSignIn();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
