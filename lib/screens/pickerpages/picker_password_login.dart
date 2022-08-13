import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';
import 'package:spik_app/screens/pickerpages/upload_document.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/sliding_up_panel_login.dart';

class PickerWelcomeBackLogin extends StatelessWidget {
  PickerWelcomeBackLogin({Key? key}) : super(key: key);
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    double panelOpen = 415;

    double panelClose = 0;
    return Scaffold(
      backgroundColor: AppColor.thirdPageGreen,
      body: SlidingUpPanel(
        defaultPanelState: PanelState.OPEN,
        backdropOpacity: 0.65,
        controller: panelController,
        backdropTapClosesPanel: true,
        backdropEnabled: true,
        parallaxOffset: 0.5,
        maxHeight: panelOpen,
        minHeight: panelClose,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        body: SafeArea(
          child: ListView(
              padding: EdgeInsets.only(top: 30, right: 20, left: 20),
              clipBehavior: Clip.hardEdge,
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
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.blackButtonBackground,
                          size: 18,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Image.asset('images/spikk-logo.png')),
                    Expanded(child: Container()),
                    Container(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'gilroy-regular.wolf2',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 7,
                      width: 95,
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
                      width: 185,
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
                      '1 of 3 ',
                      style: TextStyle(
                        fontFamily: 'gilroy-regular.wolf2',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 630,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.insideContaiinerBackground),
                  child: Column(
                    children: [
                      Container(
                        height: 433,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 30, right: 30, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ignore: prefer_const_literals_to_crwhwhshhseate_immutables
                            // ignore: prefer_const_literals_to_create_immutables
                            Row(children: [
                              Text(
                                'Enter your personal\ndetails to become a picker.',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 360,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: AuthController.instance.email,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.mail_outline_rounded,
                                        size: 18,
                                        color: AppColor.blackButtonBackground,
                                      ),
                                      labelText: 'Email Address',
                                      labelStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    controller:
                                        AuthController.instance.userName,
                                    decoration: InputDecoration(
                                      prefixIcon: Image.asset(
                                        'images/icon1.png',
                                        height: 20,
                                      ),
                                      labelText: 'Username',
                                      labelStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller:
                                        AuthController.instance.phoneNumber,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.phone_android,
                                        size: 18,
                                        color: AppColor.blackButtonBackground,
                                      ),
                                      labelText: 'Phone Number',
                                      labelStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    controller: AuthController.instance.otp,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        labelText: "OTP",
                                        labelStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade400,
                                          fontFamily: 'fonts/gilroy-light.ttf',
                                        ),
                                        prefixIcon: Image.asset(
                                          'images/icon2.png',
                                          height: 10,
                                        ),
                                        suffixIcon: Container(
                                          height: 30,
                                          margin: EdgeInsets.only(
                                              right: 10, top: 8, bottom: 8),
                                          width: 100,
                                          decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        AppColor.redTextColor,
                                                    width: 1,
                                                    style: BorderStyle.solid),
                                                top: BorderSide(
                                                    color:
                                                        AppColor.redTextColor,
                                                    width: 1,
                                                    style: BorderStyle.solid),
                                                left: BorderSide(
                                                    color:
                                                        AppColor.redTextColor,
                                                    width: 1,
                                                    style: BorderStyle.solid),
                                                right: BorderSide(
                                                    color:
                                                        AppColor.redTextColor,
                                                    width: 1,
                                                    style: BorderStyle.solid),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              color: AppColor
                                                  .insideContaiinerBackground),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Receive OTP',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily:
                                                        'fonts/gilroy-light.ttf',
                                                    color:
                                                        AppColor.redTextColor,
                                                    fontSize: 13),
                                              )),
                                        )),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check your',
                                        style: TextStyle(
                                            fontFamily:
                                                'fonts/gilroy-light.ttf',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'email address',
                                          style: TextStyle(
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'for OTP',
                                        style: TextStyle(
                                            fontFamily:
                                                'fonts/gilroy-light.ttf',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 319,
                                    decoration: BoxDecoration(
                                      color: AppColor.nextRegisterButton
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(PickerSetUpAccount(
                                          email: AuthController
                                              .instance.email.text
                                              .trim(),
                                          otp: AuthController.instance.otp.text
                                              .trim(),
                                          username: AuthController
                                              .instance.userName.text
                                              .trim(),
                                          phoneNumber: AuthController
                                              .instance.password.text
                                              .trim(),
                                        ));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Center(
                                            child: Text(
                                              'Next',
                                              style: TextStyle(
                                                  color: AppColor
                                                      .iconButtonBackground,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5.2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColor.greyButtonFade.withOpacity(0.3),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.circular(20))),
                        child: Column(
                          children: [
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
                              margin: EdgeInsets.only(left: 30, right: 30),
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: AppColor.redTextColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  // Get.to(PickerWelcomeBackLogin());
                                  panelBuilder:
                                  (controller) => SlidingUpPanelLogin(
                                        controller: controller,
                                        panelController: panelController,
                                      );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Login Here',
                                        style: TextStyle(
                                            color:
                                                AppColor.iconButtonBackground,
                                            fontFamily:
                                                'fonts/gilroy-light.ttf',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      'images/arrow_icon.png',
                                      color: AppColor.iconButtonBackground,
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
                  ),
                ),
              ]),
        ),
        panelBuilder: (controller) => SlidingUpPanelLogin(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }
}
