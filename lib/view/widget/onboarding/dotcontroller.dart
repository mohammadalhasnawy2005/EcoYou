import 'package:ecoyou/controller/onboardingcontroller.dart';
import 'package:ecoyou/core/constant/color.dart';
import 'package:ecoyou/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder:
          (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                  margin: EdgeInsets.only(right: 5),
                  duration: Duration(milliseconds: 900),
                  width: controller.currentPage == index ? 20 : 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
