import 'package:ecoyou/controller/auth/verifycontroller.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoyou/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
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
      body: Container(
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
              numberOfFields: 4,
              borderColor: AppColors.grey,
              focusedBorderColor: AppColors.primary,
              enabledBorderColor: AppColors.grey,
              cursorColor: AppColors.primary,
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              },
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
