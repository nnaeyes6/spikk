import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/guest/guest_password_login.dart';
import 'package:spik_app/screens/pickerpages/picker_password_login.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/widgets/color.dart';

class SlidingUpPanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  void onToggle() {
    panelController.isPanelClosed
        ? panelController.open()
        : panelController.close();
  }

  SlidingUpPanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.93,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColor.iconButtonBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => onToggle(),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 8,
                    width: 70,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: AppColor.greyButtonFade,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                height: 100,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Become a Picker',
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'fonts/gilroy-light.ttf',
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receive, deliver and shop items for people.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'gilroy-regular.wolf2',
                      ),
                    ),
                    Text(
                      'Make extra cash everyday and get paid fast',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'fonts/gilroy-light.ttf',
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                height: 100,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop Anything',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'fonts/gilroy-light.ttf',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 50,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop items for people.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'gilroy-regular.wolf2',
                              ),
                            ),
                            Text(
                              'while you earn',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'fonts/gilroy-light.ttf',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                height: 100,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Send Anything',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'fonts/gilroy-light.ttf',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'images/box.png',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Help people send items',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'gilroy-regular.wolf2',
                              ),
                            ),
                            Text(
                              'to different locations',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'fonts/gilroy-light.ttf',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 4.12,
          width: MediaQuery.of(context).size.width,
          color: AppColor.largeContainerBackground,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  color: AppColor.redTextColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: GestureDetector(
                  onTap: () {
                    // Get.to(PickerLoginDetails(
                    //   email: AuthController.instance.email.text.trim(),
                    //   username: AuthController.instance.userName.text.trim(),
                    //   phoneNumber: AuthController.instance.password.text.trim(),
                    //   otp: AuthController.instance.otp.text.trim(),
                    // ));
                    onToggle();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: AppColor.whiteLineButtonBackground,
                              fontFamily: 'fonts/gilroy-light.ttf',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
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
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 7,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1.3,
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
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => PickerWelcomeBackLogin());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Login Here',
                          style: TextStyle(
                              color: AppColor.redTextColor,
                              fontFamily: 'fonts/gilroy-light.ttf',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
