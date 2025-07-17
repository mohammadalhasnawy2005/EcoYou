import 'package:ecoyou/controller/onboardingcontroller.dart';
import 'package:ecoyou/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder:
          (context, i) => Column(
            children: [
              Text(
                onBoardingList[i].title!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 80),
              Image.asset(
                onBoardingList[i].image!,
                width: 250,
                height: 250,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 80),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
    );
  }
}
