import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:spik_app/screens/password_setup/picker_password_setup.dart';
import 'package:spik_app/screens/pickerpages/picker_password_login.dart';
import 'package:spik_app/screens/pickerpages/picker_password_setup.dart';
import 'package:spik_app/widgets/color.dart';

class PickerSetUpAccount extends StatelessWidget {
  final String username;
  final String email;
  final String otp;
  final String phoneNumber;
  const PickerSetUpAccount(
      {Key? key,
      required this.username,
      required this.email,
      required this.otp,
      required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.thirdPageGreen,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: ListView(children: [
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
                  width: 185,
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
                  width: 95,
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
              height: MediaQuery.of(context).size.height / 1.32,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.insideContaiinerBackground,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                margin: EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: prefer_const_literals_to_crwhwhshhseate_immutables
                    // ignore: prefer_const_literals_to_create_immutables
                    Row(children: [
                      Text(
                        'Upload these documents\nto set up your account.',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Document uploaded must be in jpeg or pdf format',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'fonts/gilroy-light.ttf',
                          fontSize: 10),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, top: 5, right: 5, bottom: 5),
                            height: 60,
                            width: MediaQuery.of(context).size.width,
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
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.insideContaiinerBackground),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/photo_picker.png'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    'Picker\'s photo',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/photo_upload.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 5, top: 5, bottom: 5),
                            height: 60,
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
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.insideContaiinerBackground),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/drivers_license.png'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    'Driver\'s License',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/photo_upload.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 5, top: 5, bottom: 5),
                            height: 60,
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
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.insideContaiinerBackground),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/insurance.png'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    'Insurance\'s Document',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/photo_upload.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 5, top: 5, bottom: 5),
                            height: 60,
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
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.insideContaiinerBackground),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/nepa_bill.png'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    'PHCN/NEPA Bill',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/photo_upload.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 5, top: 5, bottom: 5),
                            height: 60,
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
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.insideContaiinerBackground),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/report.png'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    'Inspection Report',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/photo_upload.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 45,
                            width: 319,
                            decoration: BoxDecoration(
                              color:
                                  AppColor.nextRegisterButton.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(PickerPasswordSetUp());
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
                                          color: AppColor.iconButtonBackground,
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
            ),
          ]),
        ),
      ),
    );
  }
}
