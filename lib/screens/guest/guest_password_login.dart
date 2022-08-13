import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/controller/google_login_controller.dart';
import 'package:spik_app/controller/onboarding_controller.dart';
import 'package:spik_app/screens/guest/register_page.dart';
import 'package:spik_app/widgets/color.dart';

class GuestPasswordLogin extends StatelessWidget {
  const GuestPasswordLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.035,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(children: [
                    Image.asset('images/delivery.png'),
                  ]),
                ),
              ],
            ),
            Positioned(
              bottom: 75,
              child: Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.iconButtonBackground,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
              ),
            ),
            Positioned(
              bottom: 170,
              child: Container(
                // margin: EdgeInsets.only(left: 30, ),
                padding: EdgeInsets.symmetric(horizontal: 20, ),
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 7,
                        width: 80,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          color: AppColor.greyButtonFade,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'fonts/gilroy-light.ttf',
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Kolawale',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'fonts/gilroy-light.ttf',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Login your picker account.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'gilroy-regular.wolf2',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset('images/keylock.png'),
                        suffixIcon: Image.asset('images/eye_icon.png'),
                        labelText: 'Enter Your Password',
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'fonts/gilroy-light.ttf',
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Have you forgotten your password ?',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 45,
                      width: 319,
                      decoration: BoxDecoration(
                        color: AppColor.nextRegisterButton.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          AuthController.instance.signIn(
                              AuthController.instance.email.text.trim(),
                              AuthController.instance.password.text.trim());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: AppColor.iconButtonBackground,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'images/arrow_icon.png',
                              color: AppColor.iconButtonBackground,
                              height: 8,
                              width: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 130,
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: 130,
                    color: AppColor.lineRegister,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Or, Login Using',
                    style: TextStyle(
                        fontFamily: 'fonts/gilroy-light.ttf',
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  SizedBox(width: 30),
                  Container(
                      height: 1, width: 130, color: AppColor.lineRegister),
                ],
              ),
            ),
            Positioned(
              bottom: 70,
              child: Container(
                margin: EdgeInsets.only(left: 40),
                height: 48,
                width: 319,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: AppColor.googleBorder,
                          width: 1,
                          style: BorderStyle.solid),
                      top: BorderSide(
                          color: AppColor.googleBorder,
                          width: 1,
                          style: BorderStyle.solid),
                      left: BorderSide(
                          color: AppColor.googleBorder,
                          width: 1,
                          style: BorderStyle.solid),
                      right: BorderSide(
                          color: AppColor.googleBorder,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    borderRadius: BorderRadius.circular(80),
                    color: AppColor.insideContaiinerBackground),
                child: TextButton(
                    onPressed: () {
                      // GoogleLoginController.instance.login();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/google-logo.png',
                          height: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Positioned(
              bottom: -20,
              child: Container(
                // margin: EdgeInsets.only(left: 30),
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.greyButtonFade,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Text(
                          'You can also login with your fingerprint',
                          style: TextStyle(
                              color: AppColor.iconColorBlack,
                              fontFamily: 'fonts/gilroy-light.ttf',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.fingerprint),
                      padding: EdgeInsets.only(bottom: 20),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
