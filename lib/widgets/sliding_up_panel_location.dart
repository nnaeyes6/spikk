import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/guest/nav_replacement_pages/created_account.dart';
import 'package:spik_app/screens/guest/nav_replacement_pages/creating_account.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';

class SlidingUpPanelLocation extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  SlidingUpPanelLocation({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  State<SlidingUpPanelLocation> createState() => _SlidingUpPanelLocationState();
}

class _SlidingUpPanelLocationState extends State<SlidingUpPanelLocation> {
  void onToggle() {
    widget.panelController.isPanelClosed
        ? widget.panelController.open()
        : widget.panelController.close();
  }

  bool isSwitched = false;
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
                height: 25,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 30),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 50,
                        left: 50,
                        child: Image.asset('images/location1.png')),
                    Positioned(
                        top: 30,
                        left: 30,
                        child: Image.asset('images/location2.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Enable Location',
                      size: 30,
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
                                'Enable location to see\npickers close to your street'),
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 340,
                  decoration: BoxDecoration(
                    color: isSwitched == false
                        ? AppColor.nextRegisterButton
                        : AppColor.redTextColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      AuthController.instance.signUp(
                          AuthController.instance.email.text.trim(),
                          AuthController.instance.password.text.trim());

                      Get.offAll(() => CreatingAccount(
                            password: AuthController.instance.password.text,
                            reEnterPassword:
                                AuthController.instance.reEnterPassword.text,
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: AppColor.insideContaiinerBackground,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
