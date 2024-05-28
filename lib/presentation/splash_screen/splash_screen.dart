import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/presentation/onboarding_screen/Onboarding_screen.dart';
import 'package:restaurant/presentation/splash_screen/controller/splash_controller.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  ImageConstant.imgLogo1,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          duration: 3000,
          splashIconSize: 500,
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          animationDuration: const Duration(seconds: 2),
          nextScreen: const OnboardingScreen()),
    );
  }
}
