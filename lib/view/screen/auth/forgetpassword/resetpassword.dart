import 'package:ecoyou/controller/forgetpassword/ressetpasswordcontoller.dart';
import 'package:ecoyou/core/class/handlingdataview.dart';
import 'package:ecoyou/core/class/statusrequest.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/core/function/validinput.dart';
import 'package:ecoyou/view/widget/auth/custombuttonauth.dart';
import 'package:ecoyou/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoyou/view/widget/auth/customtextformauth.dart';
import 'package:ecoyou/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
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
      body: GetBuilder<ResetPasswordControllerImp>(
        builder:
            (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      const SizedBox(height: 20.0),
                      CustomTextTitleAuth(title: "reset password"),
                      const SizedBox(height: 10.0),
                      CustomTextBodyAuth(text: "enter your new password"),
                      const SizedBox(height: 70),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 100, "password");
                        },
                        hintText: "Enter your new password",
                        icon: Icons.lock_outline,
                        labelText: "new password",
                        mycontroller: controller.password,
                      ),
                      const SizedBox(height: 15.0),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 100, "password");
                        },
                        hintText: "Enter your new password",
                        icon: Icons.lock_outline,
                        labelText: "new password",
                        mycontroller: controller.repassword,
                      ),
                      const SizedBox(height: 20.0),
                      CustomButtonAuth(
                        text: "Done",
                        onPressed: () {
                          controller.goToSuccessResetPassword();
                        },
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
