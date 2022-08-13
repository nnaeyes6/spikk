// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/guest/guest_password_setup.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 20, left: 20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.selectBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.only(bottom: 2, left: 5, top: 1),
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Image.asset('images/spikk-logo.png')),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text('Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'gilroy-regular.wolf2',
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 7,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    '1 of 2 ',
                    style: TextStyle(
                      fontFamily: 'gilroy-regular.wolf2',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.largeContainerBackground,
                ),
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Select Profile',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 130,
                        width: 310,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 8, top: 8, bottom: 8),
                              height: 130,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/spikker.png'))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 170,
                              height: 130,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                                children: [
                                  Text(
                                    'Become a Spikker',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Shop & send anything\nwith little effort required',
                                    style: TextStyle(
                                      color: AppColor.blackButtonBackground,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => RegisterAll());
                                    },
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: AppColor.redTextColor,
                                            fontFamily:
                                                'fonts/gilroy-light.ttf',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'images/arrow_icon.png',
                                          color: AppColor.redTextColor,
                                          height: 8,
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 130,
                        width: 310,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 8, top: 8, bottom: 8),
                              height: 130,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/delivery2.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 170,
                              height: 130,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                                children: [
                                  Text(
                                    'Become a Picker',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Earn at least 20k weekly\npicking up stuff for people.',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                      color: AppColor.blackButtonBackground,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => PickerLoginDetails());
                                    },
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: AppColor.redTextColor),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'images/arrow_icon.png',
                                          color: AppColor.redTextColor,
                                          height: 8,
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        'Do you already have an account?',
                        style: TextStyle(
                            fontFamily: 'fonts/gilroy-light.ttf',
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColor.redTextColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => GuestPasswordLogin());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Login Here',
                                  style: TextStyle(
                                      color: AppColor.whiteLineButtonBackground,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'images/arrow_icon.png',
                                color: AppColor.insideContaiinerBackground,
                                height: 8,
                                width: 8,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
