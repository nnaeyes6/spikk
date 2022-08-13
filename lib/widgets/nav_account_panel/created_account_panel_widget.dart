import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/guest/nav_replacement_pages/created_account.dart';
import 'package:spik_app/screens/guest/nav_replacement_pages/creating_account.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';

class CreatedAccountPanel extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  CreatedAccountPanel({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  State<CreatedAccountPanel> createState() => _CreatedAccountPanelState();
}

class _CreatedAccountPanelState extends State<CreatedAccountPanel> {
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
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                height: 80,
                width: 80,
                child: Stack(
                  children: [
                    Positioned(
                      child: Center(
                        child: Image.asset('images/circle.png'),
                      ),
                    ),
                    Center(
                      child: Image.asset('images/marked.png'),
                    ),
                  ],
                ),
              ),
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
                      text: 'Account Created',
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
                                'We are done setting up your Spikker account'),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColor.redTextColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.offAll(() => DashboardPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            'Continue to Dashboard',
                            style: TextStyle(
                                color: AppColor.insideContaiinerBackground,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/home.png',
                          color: Colors.white,
                        ),
                      ],
                    ),
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
