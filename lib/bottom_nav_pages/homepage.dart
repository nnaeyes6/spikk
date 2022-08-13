import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/textfield_model_controller.dart';
import 'package:spik_app/screens/agreements/guidelines.dart';
import 'package:spik_app/screens/guest/guest_enable_location.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/menu_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextfieldModelController _controller =
      Get.put(TextfieldModelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.firstPage,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          height: double.maxFinite,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
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
                        'Hi, Jennele',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'What would you like to do today?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 100,
                        width: 310,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 8, top: 8, bottom: 8),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: AppColor.greyButtonFade,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'images/cart1.png',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 170,
                              height: 130,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shop Anything',
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
                                    'Shop anything with\nlittle effort required.',
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
                                      Get.to(() => Guidelines(
                                          password: '', reEnterPassword: ''));
                                    },
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontSize: 12,
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
                        height: 5,
                      ),
                      Container(
                        height: 100,
                        width: 310,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 8, top: 8, bottom: 8),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: AppColor.greyButtonFade,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'images/box1.png',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 170,
                              height: 130,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Send Anything',
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
                                    'Send anything to your\nfriends and family easily.',
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
                                      Get.to(RegisterAll());
                                    },
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontSize: 12,
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
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/zigzag.png',
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            text: 'Recent Activities',
                            fontweight: FontWeight.w400,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount:
                                TextfieldModelController.instance.images.length,
                            itemBuilder: (_, i) {
                              return Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppColor
                                                  .iconButtonBackground),
                                          child: Image.asset(
                                            TextfieldModelController
                                                .instance.images[i],
                                            color: Colors.black,
                                          ),
                                        ),
                                        CustomText(
                                          text: TextfieldModelController
                                              .instance.text[i],
                                          color: AppColor.blueText,
                                          size: 12,
                                        ),
                                        CustomText(
                                            text: TextfieldModelController
                                                .instance.date[i],
                                            size: 12,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 1,
                                      width: MediaQuery.of(context).size.width,
                                      color: AppColor.greyButtonFade,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: CustomText(
                  text: 'Shopping Guidelines',
                  fontweight: FontWeight.w600,
                  size: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Make sure your package is securely sealed and not',
                    size: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'large or valuable',
                        size: 13,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => Guidelines(
                                password: '',
                                reEnterPassword: '',
                              ));
                        },
                        child: CustomText(
                          text: 'See Package Delivery Terms',
                          color: AppColor.blueText,
                          size: 13,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      CustomText(
                        text: 'for',
                        size: 13,
                      ),
                    ],
                  ),
                  CustomText(
                    text: 'specific guidelines and a list of prohibited item',
                    size: 13,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
