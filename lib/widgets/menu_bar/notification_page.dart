import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/notification.dart';
import 'package:spik_app/widgets/menu_bar/notification_panel.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    double panelOpen = 310;

    double panelClose = 0;

    final panelController = PanelController();
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SlidingUpPanel(
        defaultPanelState: PanelState.OPEN,
        backdropOpacity: 0.65,
        controller: panelController,
        backdropTapClosesPanel: false,
        backdropEnabled: true,
        parallaxOffset: 0.5,
        isDraggable: false,
        maxHeight: panelOpen,
        minHeight: panelClose,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            child: Column(children: [
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

                      child: Image.asset('images/spikk-logo.png')),
                  Expanded(child: Container()),
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.iconButtonBackground,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(bottom: 2, top: 1),
                      child: Image.asset('images/home.png')),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 1.18,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.largeContainerBackground,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          top: 20, left: 20, bottom: 10, right: 20),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Your Notifications',
                            size: 18,
                            fontweight: FontWeight.w700,
                          ),
                          CustomText(
                            text: '17',
                            size: 12,
                            fontweight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 60,
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
                                  Get.offAll(() => NotificationMenu());
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
                                color: Colors.grey.shade400,
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
                          color: Colors.grey.shade100),
                      child: CustomText(
                        text: 'Swipe right to turn on notifications',
                        size: 14,
                        fontweight: FontWeight.w400,
                        color: AppColor.blueText,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.79,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 20),
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 15,
                                ),
                                height: 27,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: CustomText(
                                    text: '10th June',
                                    size: 12,
                                    fontweight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: 'Notification Title',
                                size: 18,
                                fontweight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                                size: 14,
                                fontweight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey.shade400,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 15,
                                ),
                                height: 27,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: CustomText(
                                    text: '9th June',
                                    size: 12,
                                    fontweight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: 'Notification Title',
                                size: 18,
                                fontweight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                                size: 14,
                                fontweight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey.shade400,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 15,
                                ),
                                height: 27,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: CustomText(
                                    text: '8th June',
                                    size: 12,
                                    fontweight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: 'Notification Title',
                                size: 18,
                                fontweight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                                size: 14,
                                fontweight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 10,
                          child: Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Image.asset('images/more.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: CustomText(
                        text: 'see more notifications',
                        size: 10,
                        color: AppColor.redTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        panelBuilder: (controller) => NotificationPanel(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }
}
