// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/onboarding_controller.dart';
import 'package:spik_app/screens/guest/register_page.dart';
import 'package:spik_app/screens/guest/register_page.dart';
import 'package:spik_app/widgets/color.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingController _controller = Get.put(OnboardingController());

  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.selectBackground,
      body: PageView.builder(
          controller: _controller.pageController,
          onPageChanged: _controller.currentIndex,
          scrollDirection: Axis.horizontal,
          itemCount: _controller.onboardingPages.length,
          itemBuilder: (context, i) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Image.asset(
                      _controller.onboardingPages[i].image,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 378,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height / 1.974,
                              decoration: BoxDecoration(
                                  color: _controller.currentIndex == i
                                      ? AppColor.firstPage
                                      : AppColor.secondPage,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Container(
                                margin: EdgeInsets.all(30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          _controller.onboardingPages[i].title,
                                          style: TextStyle(
                                              fontSize: 36,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                              fontWeight: FontWeight.w700,
                                              color: _controller
                                                          .currentIndex ==
                                                      i
                                                  ? AppColor
                                                      .blackButtonBackground
                                                  : AppColor
                                                      .iconButtonBackground),
                                        ),
                                        Expanded(child: Container()),
                                        Image.asset(_controller
                                            .onboardingPages[i].logo),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _controller
                                              .onboardingPages[i].description,
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'gilroy-regular.wolf2',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: List.generate(
                                            _controller.onboardingPages.length,
                                            (i) => Obx(
                                              () => Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                height: 8,
                                                width:
                                                    _controller.currentIndex ==
                                                            i
                                                        ? 35
                                                        : 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: _controller
                                                              .currentIndex ==
                                                          i
                                                      ? AppColor
                                                          .blackButtonBackground
                                                      : AppColor
                                                          .whiteLineButtonBackground,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: [
                                        _controller.currentIndex == i
                                            ? Container(
                                                height: 50,
                                                width: 180,
                                                padding: EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80)),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Get.to(RegisterPage());
                                                    },
                                                    child: Text(
                                                      'Skip',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18,
                                                          fontFamily:
                                                              'gilroy-regular.wolf2',
                                                          color: AppColor
                                                              .whiteLineButtonBackground),
                                                    )),
                                              )
                                            : Container(
                                                color: AppColor.backGroundColor,
                                              ),
                                        Expanded(child: Container()),
                                        IconButton(
                                            onPressed: _controller.onNextPage,
                                            icon: Image.asset(
                                                'images/handicon.png')),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
