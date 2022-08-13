import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/models/onboarding_login_model.dart';
import 'package:spik_app/models/onboarding_model.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:spik_app/screens/login_onboarding_page.dart';

class OnboardingController extends GetxController {
  static OnboardingController instance = Get.find();

  var currentIndex = 0.obs;
  bool get isLastPage => currentIndex.value == onboardingPages.length - 1;

  var pageController = PageController();
  onNextPage() {
    if (isLastPage) {
      Get.to(LoginPage());
    } else {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.easeInCirc);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('images/spikker.png', 'Shop\nAnything',
        'images/spikk-logo.png', 'Shop anything with\nlittle effort required.'),
    OnboardingInfo(
        'images/delivery2.png',
        'Become\na Picker',
        'images/spikk-logo.png',
        'Earn at least ₦20k weekly\npicking up stuff for people..'),
  ];
  List<OnboardingLoginInfo> onboardingLoginPage = [
    OnboardingLoginInfo(
        'images/delivery.png',
        'Send\nAnything',
        'images/spikk-logo.png',
        'Send anything to your\nfriends and family easily..')
  ];
}
