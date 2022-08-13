import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/widgets/color.dart';

class SlidingUpPanelGuideline extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  SlidingUpPanelGuideline({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  State<SlidingUpPanelGuideline> createState() =>
      _SlidingUpPanelGuidelineState();
}

class _SlidingUpPanelGuidelineState extends State<SlidingUpPanelGuideline> {
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
          height: MediaQuery.of(context).size.height / 1.6,
          width: 350,
          color: AppColor.insideContaiinerBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => DashboardPage());
                },
                child: Center(
                  child: Container(
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
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shop anything',
                        style: TextStyle(
                            color: AppColor.greyButtonFade,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'fonts/gilroy-light.ttf',
                            fontStyle: FontStyle.normal),
                      ),
                      Row(
                        children: [
                          Text(
                            'Guidelines',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'fonts/gilroy-light.ttf',
                                fontStyle: FontStyle.normal),
                          ),
                          Expanded(child: Container()),
                          Image.asset('images/cart.png')
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Occasionally, the estimated price with the actual price of the product may differ.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'gilroy-regular.wolf2',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'In cases where the total actual price is more than the estimate, the picker will contact you to ask if you’d still like to proceed with the purchase.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'If you do not want to proceed, your order will be cancelled or you can choose which of the order in the list should be cancelled.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'gilroy-regular.wolf2',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'If you accept the change, the picker will proceed to purchase the products.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          'For any price difference, you\nll be able to see the updated price once the Picker enters the price and issues the receipt of the purchase')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          color: AppColor.greyButtonFade,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                'Do you understand the guidelines?',
                style: TextStyle(
                    fontFamily: 'fonts/gilroy-light.ttf',
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )),
              SizedBox(
                height: 10,
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
                    Get.to(DashboardPage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Yes, Continue',
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
            ],
          ),
        ),
      ],
    );
  }
}
