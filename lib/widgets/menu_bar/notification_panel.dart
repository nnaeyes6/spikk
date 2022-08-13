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

class NotificationPanel extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  NotificationPanel({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  State<NotificationPanel> createState() => _NotificationPanelState();
}

class _NotificationPanelState extends State<NotificationPanel> {
  void onToggle() {
    widget.panelController.isPanelClosed
        ? widget.panelController.open()
        : widget.panelController.close();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          width: 350,
          color: Colors.white,
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
                height: 10,
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.notifications,
                  color: AppColor.greyButtonFade,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'You have turned\non notifications',
                      size: 36,
                      color: Colors.black,
                      fontweight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    onToggle();
                  },
                  child: Container(
                    height: 45,
                    width: 340,
                    decoration: BoxDecoration(
                      color: AppColor.redTextColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: AppColor.insideContaiinerBackground,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
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
