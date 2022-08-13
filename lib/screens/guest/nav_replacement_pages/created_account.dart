import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/nav_account_panel/created_account_panel_widget.dart';
import 'package:spik_app/widgets/nav_account_panel/creating_account_panel_widget.dart';

class CreatedAccount extends StatefulWidget {
  final String password;
  final String reEnterPassword;
  CreatedAccount({required this.password, required this.reEnterPassword});

  @override
  State<CreatedAccount> createState() => _CreatedAccount();
}

class _CreatedAccount extends State<CreatedAccount> {
  bool isChecked = false;
  bool _showPassword = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    double panelOpen = 360;

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
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      '3 of 3 ',
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
                    height: 570,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.largeContainerBackground,
                    ),
                    child: Container(
                      height: 480,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red,
                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_literals_to_crwhwhshhseate_immutables
                          // ignore: prefer_const_literals_to_create_immutables
                          Row(children: [
                            Text(
                              'Please setup\nyour password.',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'fonts/gilroy-light.ttf',
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 450,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  obscureText: _obscureText,
                                  controller: AuthController.instance.password,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        AppColor.insideContaiinerBackground,
                                    prefixIcon:
                                        Image.asset('images/keylock.png'),
                                    suffixIcon: IconButton(
                                        icon: _showPassword
                                            ? Icon(Icons.visibility)
                                            : Image.asset(
                                                'images/eye_icon.png'),
                                        onPressed: () => setState(() {
                                              _obscureText = !_obscureText;
                                              _showPassword = !_showPassword;
                                            })),
                                    labelText: 'Your Password',
                                    labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Password must be at ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                          Text(
                                            'least 8 characters long',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'including at least 1',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                          Text(
                                            'uppercase alphabet,',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'a number ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                          Text(
                                            'and ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                          Text(
                                            'a special character',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              fontFamily:
                                                  'fonts/gilroy-light.ttf',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller:
                                      AuthController.instance.reEnterPassword,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    fillColor:
                                        AppColor.insideContaiinerBackground,
                                    filled: true,
                                    prefixIcon:
                                        Image.asset('images/keylock.png'),
                                    suffixIcon: IconButton(
                                        icon: _showPassword
                                            ? Icon(Icons.visibility)
                                            : Image.asset(
                                                'images/eye_icon.png'),
                                        onPressed: () => setState(() {
                                              _obscureText = !_obscureText;
                                              _showPassword = !_showPassword;
                                            })),
                                    labelText: 'Your Password',
                                    labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.red,
                                              width: 4,
                                              style: BorderStyle.solid),
                                          top: BorderSide(
                                              color: Colors.red,
                                              width: 4,
                                              style: BorderStyle.solid),
                                          left: BorderSide(
                                              color: Colors.red,
                                              width: 4,
                                              style: BorderStyle.solid),
                                          right: BorderSide(
                                              color: Colors.red,
                                              width: 4,
                                              style: BorderStyle.solid),
                                        ),
                                      ),
                                      child: Checkbox(
                                          activeColor: Colors.white,
                                          checkColor: Colors.black,
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          }),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'I agree to the ',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      'terms of service',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                    ),
                                    Text(
                                      ' & aggrement',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 48,
                                  width: 319,
                                  decoration: BoxDecoration(
                                    color: AppColor.nextRegisterButton,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Center(
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                                color: AppColor
                                                    .iconButtonBackground,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Container(
                                      height: 1,
                                      width: 80,
                                      color: AppColor.lineRegister,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Or, Register Using',
                                      style: TextStyle(
                                          fontFamily: 'fonts/gilroy-light.ttf',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                        height: 1,
                                        width: 80,
                                        color: AppColor.lineRegister),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
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
                                      color:
                                          AppColor.insideContaiinerBackground),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'images/google-logo.png',
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          ),
          panelBuilder: (controller) => CreatedAccountPanel(
            controller: controller,
            panelController: panelController,
          ),
        ));
  }
}
