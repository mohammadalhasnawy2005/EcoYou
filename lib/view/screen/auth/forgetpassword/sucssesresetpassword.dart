import 'package:ecoyou/controller/auth/successresetpasswordcontroller.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(
      SuccessResetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          "Success",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Icon(Icons.check_circle, color: Colors.green, size: 100),
            ),
            Text(
              "Successfully reset password!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Spacer(),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "go to login",
                onPressed: () {
                  controller.goTopageLogin();
                },
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
