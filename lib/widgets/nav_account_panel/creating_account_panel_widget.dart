import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/guest/guest_password_setup.dart';
import 'package:spik_app/screens/guest/nav_replacement_pages/created_account.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';

class CreatingAccountPanel extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  CreatingAccountPanel({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  State<CreatingAccountPanel> createState() => _CreatingAccountPanelState();
}

class _CreatingAccountPanelState extends State<CreatingAccountPanel> {
  void onToggle() {
    widget.panelController.isPanelClosed
        ? widget.panelController.open()
        : widget.panelController.close();
  }

  bool isSwitched = false;
  bool isSuccessful = true;

  @override
  void initState() {
    Timer(Duration(seconds: 3), route);
    super.initState();
  }

  route() {
    if (AuthController.instance.signUp == isSuccessful) {
      Get.offAll(() => CreatedAccount(
          password: AuthController.instance.password.text,
          reEnterPassword: AuthController.instance.reEnterPassword.text));
      dispose();
    } else {
      Get.offAll(
        () => GuestPasswordSetUp(
            username: AuthController.instance.userName.text,
            email: AuthController.instance.email.text,
            otp: AuthController.instance.otp.text),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          width: 350,
          color: AppColor.insideContaiinerBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  onToggle();
                },
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 7,
                    width: 80,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: AppColor.greyButtonFade,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 81,
                  width: 104,
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: AppColor.firstPage,
                            width: 1,
                            style: BorderStyle.solid),
                        top: BorderSide(
                            color: AppColor.firstPage,
                            width: 1,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            color: AppColor.firstPage,
                            width: 1,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            color: AppColor.firstPage,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: AppColor.insideContaiinerBackground),
                  margin: EdgeInsets.only(left: 50),
                  child: Center(child: Image.asset('images/animation.png'))),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Creating Account',
                      size: 36,
                      color: Colors.black,
                      fontweight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CustomText(
                            text:
                                'Please wait while we setup\nyour Spikker account...'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
