import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/widgets/color.dart';

class SlidingUpPanelLogin extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  void onToggle() {
    panelController.isPanelClosed
        ? panelController.open()
        : panelController.close();
  }

  SlidingUpPanelLogin({
    Key? key,
    required this.controller,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          width: 350,
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
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Text(
                      'Login your picker account.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'gilroy-regular.wolf2',
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextFormField(
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
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
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
              Center(
                child: Container(
                  height: 45,
                  width: 340,
                  decoration: BoxDecoration(
                    color: AppColor.nextRegisterButton.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {},
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
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 8.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.greyButtonFade,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
            ],
          ),
        ),
      ],
    );
  }
}
