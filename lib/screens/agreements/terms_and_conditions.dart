import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/bottom_nav_pages/homepage.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/widgets/color.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.iconButtonBackground,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.only(bottom: 2, left: 5, top: 1),
                        onPressed: () => Get.back(),
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
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

                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: AppColor.iconButtonBackground,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                          child: Image.asset('images/home.png',
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 1.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.largeContainerBackground),
                child: Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColor.insideContaiinerBackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 120,
                              width: 210,
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Terms and Conditions',
                                    style: TextStyle(
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: AppColor.textColorBold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Please read the terms\ncarefully before you continue',
                                    style: TextStyle(
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: AppColor.textColorLite),
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Image.asset('images/agreement.png')),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 1.55,
                        margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sed ut perspiciatis unde omnis iste natus\nerror sit voluptatem accusantium',
                              style: TextStyle(
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: AppColor.textColorLite),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non',
                              style: TextStyle(
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: AppColor.textColorLite),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'provident, similique sunt in culpa qui officia, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi ',
                              style: TextStyle(
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: AppColor.textColorLite),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Sed ut unde omnis iste natus error sit ',
                              style: TextStyle(
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: AppColor.textColorLite),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non',
                              style: TextStyle(
                                  fontFamily: 'fonts/gilroy-light.ttf',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: AppColor.textColorLite),
                            ),
                            SizedBox(
                              height: 40,
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
                                        'Continue',
                                        style: TextStyle(
                                            color: AppColor
                                                .whiteLineButtonBackground,
                                            fontFamily:
                                                'fonts/gilroy-light.ttf',
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
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}



//  Container(
//               height: MediaQuery.of(context).size.height / 5.85,
//               width: MediaQuery.of(context).size.width,
//               color: AppColor.greyButtonFade,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Center(
//                       child: Text(
//                     'Do you understand the guidelines?',
//                     style: TextStyle(
//                         fontFamily: 'fonts/gilroy-light.ttf',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700),
//                   )),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 45,
//                     width: MediaQuery.of(context).size.width / 1.3,
//                     decoration: BoxDecoration(
//                       color: AppColor.redTextColor,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: GestureDetector(
//                       onTap: () {
//                         Get.to(HomeScreen());
//                       },
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Text(
//                               'Yes, Continue',
//                               style: TextStyle(
//                                   color: AppColor.whiteLineButtonBackground,
//                                   fontFamily: 'fonts/gilroy-light.ttf',
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
         
