import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/textfield_model_controller.dart';
import 'package:spik_app/screens/agreements/guidelines.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/menu_bar.dart';

class ReferralFriendPage extends StatelessWidget {
  ReferralFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.firstPage,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColor.selectBackground,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                padding: EdgeInsets.only(bottom: 2, top: 1, left: 8),
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Image.asset('images/spikk-logo.png')),
            Container(
              // margin: EdgeInsets.only(top: 20, left: 20),
              height: 30,
              width: 30,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: AppColor.selectBackground,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                padding: EdgeInsets.only(bottom: 2, top: 1),
                onPressed: () => Get.back(),
                icon: Image.asset('images/chat.png'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColor.firstPage,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          height: double.maxFinite,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.largeContainerBackground,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        height: 191,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30, left: 30),
                                  height: 44,
                                  width: 200,
                                  child: Text(
                                    'Refer friends and\nmake some easy cash.',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  height: 40,
                                  width: 200,
                                  child: Text(
                                    'For every friend you refer\nto Spikk, you can make',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        'up to',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'fonts/gilroy-light.ttf',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '₦ 500.',
                                        style: TextStyle(
                                          color: AppColor.blueText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'fonts/gilroy-light.ttf',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Image.asset(
                                'images/referral_icon.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: CustomText(
                          text: 'How it works',
                          fontweight: FontWeight.w400,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 55,
                                      ),
                                      child: Image.asset(
                                        'images/straight_dot.png',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          text: '1',
                                          size: 24,
                                          fontweight: FontWeight.w700,
                                          color: AppColor.firstPage,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Invite someone',
                                          size: 16,
                                          fontweight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text:
                                              'Share the link below to invite a friend',
                                          size: 14,
                                          fontweight: FontWeight.w400,
                                          color: Colors.grey.shade500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    top: 85,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          text: '2',
                                          size: 24,
                                          fontweight: FontWeight.w700,
                                          color: AppColor.firstPage,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90, top: 95),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Invite someone',
                                          size: 16,
                                          fontweight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text:
                                              'They download spikk with your invite link ',
                                          size: 14,
                                          fontweight: FontWeight.w400,
                                          color: Colors.grey.shade500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 170,
                                    left: 30,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 50),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          text: '3',
                                          size: 24,
                                          fontweight: FontWeight.w700,
                                          color: AppColor.firstPage,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90, top: 180),
                                    padding: EdgeInsets.only(bottom: 40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Invite someone',
                                          size: 16,
                                          fontweight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text:
                                              'We fund your Spikk wallet with ₦ 500',
                                          size: 14,
                                          fontweight: FontWeight.w400,
                                          color: Colors.grey.shade500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 30, top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Your referal link is'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 60,
                              width: 300,
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: AppColor.greyButtonFade,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: 'https://spikk/#/Janelle/invite..',
                                    color: AppColor.blueText,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 33,
                                      width: 68,
                                      decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: AppColor.redTextColor,
                                                width: 1,
                                                style: BorderStyle.solid),
                                            top: BorderSide(
                                                color: AppColor.redTextColor,
                                                width: 1,
                                                style: BorderStyle.solid),
                                            left: BorderSide(
                                                color: AppColor.redTextColor,
                                                width: 1,
                                                style: BorderStyle.solid),
                                            right: BorderSide(
                                                color: AppColor.redTextColor,
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: CustomText(
                                          text: 'Copy',
                                          color: AppColor.redTextColor,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.largeContainerBackground,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColor.insideContaiinerBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          margin: EdgeInsets.only(top: 25, left: 30),
                          child: CustomText(
                            text: 'Invite History',
                            size: 18,
                            fontweight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'images/referral_icon.png',
                                ),
                                Positioned(
                                  bottom: 30,
                                  left: 20,
                                  child: Image.asset(
                                    'images/notification_red.png',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: 'Nothing to see here',
                              size: 18,
                              fontweight: FontWeight.w600,
                              color: Colors.grey.shade400,
                            ),
                            CustomText(
                              text: 'So far you have not invited anybody',
                              size: 14,
                              fontweight: FontWeight.w400,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
