import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/bottom_nav_pages/homepage.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/agreements/terms_and_conditions.dart';
import 'package:spik_app/screens/guest/register_page.dart';
import 'package:spik_app/screens/pickerpages/picker_password_login.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/notification.dart';
import 'package:spik_app/widgets/menu_bar/referral_friend.dart';
import 'package:spik_app/widgets/menu_bar/wallet.dart';

class MenuNavBar extends StatefulWidget {
  const MenuNavBar({Key? key}) : super(key: key);

  @override
  State<MenuNavBar> createState() => _MenuNavBarState();
}

class _MenuNavBarState extends State<MenuNavBar> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.15,
      child: Drawer(
        backgroundColor: AppColor.firstPage,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.only(
                bottom: 2,
              ),
              decoration: BoxDecoration(
                color: AppColor.menuHeader,
              ),
              accountName: Container(
                margin: EdgeInsets.only(left: 10),
                child: CustomText(
                  text: 'Jannele',
                  color: Colors.white,
                ),
              ),
              accountEmail: Container(
                margin: EdgeInsets.only(left: 10),
                child: CustomText(
                  text: 'jannele.Adesanya@gmail.com  ',
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('images/profile_lady.png'),
                ),
              ),
            ),
            Container(
              height: 70,
              color: AppColor.menuHeader,
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Switch to Picker Account',
                    color: Colors.white,
                    fontweight: FontWeight.w400,
                  ),
                  Center(
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          Get.to(() => PickerWelcomeBackLogin());
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => Wallet()),
                    child: Row(
                      children: [
                        Image.asset('images/wallet.png', color: Colors.white),
                        SizedBox(
                          width: 30,
                        ),
                        CustomText(
                          text: 'Wallet',
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => TermsAndConditions()),
                    child: Row(
                      children: [
                        Image.asset('images/insurance.png',
                            color: Colors.white),
                        SizedBox(
                          width: 30,
                        ),
                        CustomText(
                          text: 'Terms & Conditions',
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => NotificationMenu()),
                    child: Row(
                      children: [
                        Image.asset('images/notification.png',
                            color: Colors.white),
                        SizedBox(
                          width: 30,
                        ),
                        CustomText(
                          text: 'Notifications',
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => ReferralFriendPage()),
                    child: Row(
                      children: [
                        Image.asset('images/icon1.png', color: Colors.white),
                        SizedBox(
                          width: 30,
                        ),
                        CustomText(
                          text: 'Refer a friend',
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.signOut();
                Get.to(() => RegisterPage());
              },
              child: Container(
                height: 100,
                color: AppColor.menuHeader,
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomText(
                      text: 'Log Out',
                      color: Colors.white,
                      fontweight: FontWeight.w600,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
