import 'package:ecoyou/controller/auth/forgetpasswordcontroller.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/core/function/validinput.dart';
import 'package:ecoyou/view/widget/auth/custombuttonauth.dart';
import 'package:ecoyou/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoyou/view/widget/auth/customtextformauth.dart';
import 'package:ecoyou/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          "Forget Password",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(height: 20.0),
              CustomTextTitleAuth(title: "check your email"),
              const SizedBox(height: 10.0),
              CustomTextBodyAuth(text: "Sign in to continue to EcoYou"),
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

              CustomButtonAuth(
                text: "check email",
                onPressed: () {
                  controller.chekemail();
                },
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
