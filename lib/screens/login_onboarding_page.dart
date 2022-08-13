// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/onboarding_controller.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/guest/register_page.dart';

import 'package:spik_app/widgets/color.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final OnboardingController _controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.selectBackground,
      body: PageView.builder(
          itemCount: _controller.onboardingLoginPage.length,
          itemBuilder: (context, i) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 1.59,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Column(children: [
                            Image.asset('images/delivery.png'),
                          ]),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 380,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 1.8,
                              // height: 420,
                              decoration: BoxDecoration(
                                  color: AppColor.thirdPageGreen,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Container(
                                margin: EdgeInsets.all(25),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            _controller
                                                .onboardingLoginPage[i].title,
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    AppColor.selectBackground),
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
                                            _controller.onboardingLoginPage[i]
                                                .description,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              height: 7,
                                              width: 7,
                                              decoration: BoxDecoration(
                                                color: AppColor.thirdPageGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    color: AppColor
                                                        .selectBackground,
                                                    offset: Offset(1, 1),
                                                  ),
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    color: Colors.white,
                                                    offset: Offset(-1, -1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              height: 7,
                                              width: 7,
                                              decoration: BoxDecoration(
                                                color: AppColor.thirdPageGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    color: AppColor
                                                        .selectBackground,
                                                    offset: Offset(1, 1),
                                                  ),
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    color: Colors.white,
                                                    offset: Offset(-1, -1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              height: 7,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white),
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Column(
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Don\'t have an acccont?',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                height: 45,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80),
                                                    color:
                                                        Colors.grey.shade300),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.to(RegisterPage());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    // ignore: prefer_const_literals_to_create_immutables
                                                    children: [
                                                      Center(
                                                        child: Text(
                                                          'Join Spikk',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5),
                                                      Image.asset(
                                                        'images/arrow_icon.png',
                                                        color: AppColor
                                                            .handIconButtonBackground,
                                                        height: 8,
                                                        width: 8,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: Text(
                                                  'Already have an acccont?',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 30),
                                                height: 45,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                      bottom: BorderSide(
                                                          color: AppColor
                                                              .selectBackground,
                                                          width: 3,
                                                          style: BorderStyle
                                                              .solid),
                                                      top: BorderSide(
                                                          color: AppColor
                                                              .selectBackground,
                                                          width: 3,
                                                          style: BorderStyle
                                                              .solid),
                                                      left: BorderSide(
                                                          color: AppColor
                                                              .selectBackground,
                                                          width: 3,
                                                          style: BorderStyle
                                                              .solid),
                                                      right: BorderSide(
                                                          color: AppColor
                                                              .selectBackground,
                                                          width: 3,
                                                          style: BorderStyle
                                                              .solid),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80),
                                                    color: AppColor
                                                        .thirdPageGreen),
                                                child: TextButton(
                                                  onPressed: () {
                                                    Get.to(
                                                        GuestPasswordLogin());
                                                  },
                                                  child: Text(
                                                    'Login',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ]),
                              ),
                            )
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
