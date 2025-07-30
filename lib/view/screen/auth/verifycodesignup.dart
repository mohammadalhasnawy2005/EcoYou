import 'package:ecoyou/controller/auth/verifycodesignup.dart';
import 'package:ecoyou/core/class/handlingdataview.dart';
import 'package:ecoyou/core/class/statusrequest.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoyou/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          "Verify Code",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
        builder:
            (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    const SizedBox(height: 20.0),
                    CustomTextTitleAuth(title: "check your code"),
                    const SizedBox(height: 10.0),
                    CustomTextBodyAuth(text: "Verify your code"),
                    const SizedBox(height: 70),
                    OtpTextField(
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20.5),
                      showFieldAsBox: true,
                      numberOfFields: 5,
                      borderColor: AppColors.grey,
                      focusedBorderColor: AppColors.primary,
                      enabledBorderColor: AppColors.grey,
                      cursorColor: AppColors.primary,
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      },
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
