import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/bottom_nav_pages/homepage.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/screens/agreements/terms_and_conditions.dart';
import 'package:spik_app/screens/guest/guest_enable_location.dart';
import 'package:spik_app/screens/pickerpages/picker_password_login.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/notification.dart';
import 'package:spik_app/widgets/menu_bar/notification_page.dart';
import 'package:spik_app/widgets/menu_bar/wallet.dart';

class NotificationMenu extends StatefulWidget {
  const NotificationMenu({Key? key}) : super(key: key);

  @override
  State<NotificationMenu> createState() => _NotificationMenuState();
}

class _NotificationMenuState extends State<NotificationMenu> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                height: MediaQuery.of(context).size.height / 1.15,
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
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
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
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 50,
                                color: AppColor.greyButtonFade,
                                offset: Offset(5, 20),
                                spreadRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: CustomText(
                        text: 'Your Notifications',
                        size: 18,
                        fontweight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 70,
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Turn on notification.',
                            fontweight: FontWeight.w400,
                          ),
                          Center(
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  Get.offAll(() => NotificationPage());
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey,
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
                          color: AppColor.greyButtonFade),
                      child: CustomText(
                        text: 'Swipe right to turn on notifications',
                        size: 14,
                        fontweight: FontWeight.w400,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100, left: 120),
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.grey,
                        size: 100,
                      ),
                    ),
                    Center(
                      child: CustomText(
                        text: 'Nothing to see here',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: CustomText(
                        text: 'Turn notifications to start receiving',
                        size: 14,
                        fontweight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: CustomText(
                        text: 'notifications',
                        size: 14,
                        fontweight: FontWeight.w400,
                      ),
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
