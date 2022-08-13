import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/textfield_model_controller.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({Key? key}) : super(key: key);

  final TextfieldModelController _controller =
      Get.put(TextfieldModelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 135,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.greyButtonFade,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20, bottom: 1),
                      child: CustomText(
                        text: 'Your Current Order',
                        size: 14,
                        fontweight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 15),
                                child: CustomText(
                                  text:
                                      'Pringles, Sour Cream\n & Onion flavour',
                                  size: 13,
                                  fontweight: FontWeight.w800,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                child: CustomText(
                                  text: '#4527b21',
                                  size: 12,
                                  fontweight: FontWeight.w600,
                                  color: AppColor.blueText,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 15),
                                child: CustomText(
                                  text: '10th June,2021',
                                  size: 12,
                                  fontweight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                child: CustomText(
                                  text: '10:02 AM',
                                  size: 12,
                                  fontweight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 5,
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
                        margin: EdgeInsets.all(10),
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
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.firstPage),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              margin: EdgeInsets.only(left: 10),
                              child: Center(
                                child: CustomText(
                                  text: 'Completed Orders',
                                  color: Colors.black,
                                  size: 16,
                                  fontweight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Center(
                                child: CustomText(
                                  text: 'Saved Orders',
                                  color: Colors.blueGrey,
                                  size: 12,
                                  fontweight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.4,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(right: 20, left: 20),
                        child: ListView.builder(
                            itemCount:
                                TextfieldModelController.instance.images.length,
                            itemBuilder: (_, i) {
                              return Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppColor
                                                  .iconButtonBackground),
                                          child: Image.asset(
                                            TextfieldModelController
                                                .instance.images[i],
                                            color: Colors.black,
                                          ),
                                        ),
                                        CustomText(
                                          text: TextfieldModelController
                                              .instance.text[i],
                                          color: AppColor.blueText,
                                          size: 12,
                                        ),
                                        CustomText(
                                            text: TextfieldModelController
                                                .instance.date[i],
                                            size: 12,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
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
