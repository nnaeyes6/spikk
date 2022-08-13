import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  List images = [
    'images/icon1.png',
    'images/envelope.png',
    'images/icon_phone.png',
    'images/icon_bank.png',
    'images/random_phone.png',
  ];
  List text = [
    'Jennele',
    'Jennele.Adesanya@gmail.com',
    '(+234) 0813 567 8392',
    'ABC Bank Plc',
    '10002933883',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                  color: AppColor.greyButtonFade,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 90,
                    width: 90,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          child: Image.asset(
                            'images/profile_lady.png',
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 60,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: AppColor.firstPage,
                                borderRadius: BorderRadius.circular(80)),
                            child: Image.asset(
                              'images/stack_icon.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 250,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Jannele  Adesanya',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'fonts/gilroy-light.ttf',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          width: 250,
                          color: AppColor.greyButtonFade,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Your wallet balance is:',
                          style: TextStyle(
                            color: AppColor.blackButtonBackground,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'fonts/gilroy-light.ttf',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'N 22,000',
                              style: TextStyle(
                                color: AppColor.blackButtonBackground,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'fonts/gilroy-light.ttf',
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                'images/icon_lady.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  margin: EdgeInsets.only(right: 20, left: 20),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.iconButtonBackground,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 20),
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
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.insideContaiinerBackground),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.greyButtonFade,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: CustomText(
                                    text: '8',
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CustomText(
                                text: 'Orders completed',
                                color: Colors.black,
                                size: 16,
                                fontweight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: images.length,
                            itemBuilder: (_, i) {
                              return Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 20,
                                              bottom: 5,
                                            ),
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: AppColor
                                                    .iconButtonBackground),
                                            child: Image.asset(
                                              images[i],
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: CustomText(
                                            text: text[i],
                                            color: Colors.grey,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 1,
                                      width: MediaQuery.of(context).size.width,
                                      color: AppColor.greyButtonFade,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 20),
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
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.insideContaiinerBackground),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Change Password',
                              color: AppColor.redTextColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'images/arrow_icon.png',
                              color: AppColor.redTextColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
