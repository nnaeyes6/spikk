import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/controller/textfield_model_controller.dart';
import 'package:spik_app/screens/agreements/guidelines.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/menu_bar.dart';

class Wallet extends StatelessWidget {
  Wallet({Key? key}) : super(key: key);

  final TextfieldModelController _controller =
      Get.put(TextfieldModelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // automaticallyImplyLeading: false,
        backgroundColor: AppColor.firstPage,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => DashboardPage());
              },
              child: Container(
                // margin: EdgeInsets.only(top: 20, left: 20),
                height: 30,
                padding: EdgeInsets.only(left: 7),
                width: 30,
                decoration: BoxDecoration(
                  color: AppColor.selectBackground,
                  borderRadius: BorderRadius.circular(5),
                ),

                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
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
              // margin: EdgeInsets.only(top: 20, left: 20),
              height: 30,
              width: 30,
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
          height: double.maxFinite,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                margin: EdgeInsets.only(right: 15, left: 15),
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.greyButtonFade,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                      padding: EdgeInsets.only(top: 25, left: 20),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: AppColor.greyButtonFade,
                                width: 1,
                                style: BorderStyle.solid),
                            top: BorderSide(
                                color: AppColor.greyButtonFade,
                                width: 1,
                                style: BorderStyle.solid),
                            left: BorderSide(
                                color: AppColor.greyButtonFade,
                                width: 1,
                                style: BorderStyle.solid),
                            right: BorderSide(
                                color: AppColor.greyButtonFade,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Your wallet balance is:',
                            color: Colors.grey,
                            size: 12,
                            fontweight: FontWeight.w400,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomText(
                            text: 'N 22,000',
                            color: Colors.black,
                            size: 36,
                            fontweight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: CustomText(
                          text:
                              'To fund wallet transfer to the bank account\nbelow.'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset('images/icon_bank.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Bank',
                                size: 12,
                                fontweight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomText(
                                text: 'ABC Bank Plc',
                                size: 18,
                                fontweight: FontWeight.w600,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('images/account_number.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Account Number',
                              size: 12,
                              fontweight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomText(
                              text: '10002933883',
                              size: 18,
                              fontweight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          margin: EdgeInsets.only(right: 10, top: 5, bottom: 2),
                          width: 70,
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
                              borderRadius: BorderRadius.circular(80),
                              color: AppColor.insideContaiinerBackground),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Copy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  color: AppColor.redTextColor,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset('images/icon1.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Account Name',
                                size: 12,
                                fontweight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomText(
                                text: 'Janelle Sanya (Spikk)',
                                size: 18,
                                fontweight: FontWeight.w600,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
