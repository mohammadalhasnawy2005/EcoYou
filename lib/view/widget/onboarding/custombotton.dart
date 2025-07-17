import 'package:ecoyou/controller/onboardingcontroller.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 20),
      color: AppColors.primary,
      child: MaterialButton(
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: Text("Continue"),
      ),
    );
  }
}
