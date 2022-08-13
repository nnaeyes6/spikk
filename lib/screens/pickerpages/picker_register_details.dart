import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/controller/auth_form_validation.dart';
import 'package:spik_app/screens/guest/guest_password_setup.dart';
import 'package:spik_app/screens/pickerpages/picker_password_login.dart';
import 'package:spik_app/screens/pickerpages/upload_document.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:spik_app/widgets/otp.dart';
import 'package:spik_app/widgets/picker_sliding_up_panel.dart';

class PickerLoginDetails extends StatefulWidget {
  @override
  State<PickerLoginDetails> createState() => _PickerLoginDetailsState();
}

class _PickerLoginDetailsState extends State<PickerLoginDetails> {
  final panelController = PanelController();
  bool isOTP = false;
  bool isUsername = false;
  bool isEmail = false;
  bool isPhopneNumber = false;

  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    AuthController.instance.email.dispose();
    AuthController.instance.userName.dispose();
    AuthController.instance.otp.dispose();
    AuthController.instance.otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double panelOpen = 635;
    double panelClose = 0;

    return Scaffold(
      backgroundColor: AppColor.thirdPageGreen,
      body: SlidingUpPanel(
        defaultPanelState: PanelState.OPEN,
        backdropOpacity: 0.65,
        controller: panelController,
        backdropTapClosesPanel: true,
        backdropEnabled: true,
        parallaxOffset: 0.5,
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
            child: Form(
              key: formkey,
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
                      '2 of 3 ',
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
                    height: 630,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.largeContainerBackground,
                    ),
                    child: Container(
                      height: 510,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_literals_to_crwhwhshhseate_immutables
                          // ignore: prefer_const_literals_to_create_immutables
                          Row(children: [
                            Text(
                              'Enter your personal\ndetails to register.',
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
                            height: 520,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Focus(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    controller: AuthController.instance.email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      fillColor: isEmail
                                          ? AppColor.insideContaiinerBackground
                                              .withOpacity(0.5)
                                          : AppColor.insideContaiinerBackground,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.mail_outline_rounded,
                                        color: AppColor.blackButtonBackground,
                                      ),
                                      labelText: 'Email Address',
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                    validator:
                                        AuthFormValidation().emailValidator,
                                    onChanged: (value) {
                                      setState(() {
                                        AuthController.instance.email;
                                      });
                                    },
                                  ),
                                  onFocusChange: (hasFocus) {
                                    setState(() {
                                      isEmail = hasFocus;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Focus(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    controller:
                                        AuthController.instance.userName,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      fillColor: isUsername
                                          ? AppColor.insideContaiinerBackground
                                              .withOpacity(0.5)
                                          : AppColor.insideContaiinerBackground,
                                      filled: true,
                                      prefixIcon: Image.asset(
                                        'images/icon1.png',
                                        height: 20,
                                      ),
                                      labelText: 'Username',
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                    validator:
                                        AuthFormValidation().userNameValidator,
                                    onChanged: (value) {
                                      setState(() {
                                        AuthController.instance.userName;
                                      });
                                    },
                                  ),
                                  onFocusChange: (hasFocus) {
                                    setState(() {
                                      isUsername = hasFocus;
                                    });
                                  },
                                ),
                                SizedBox(height: 7),
                                Focus(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    controller:
                                        AuthController.instance.phoneNumber,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: isEmail
                                          ? AppColor.insideContaiinerBackground
                                              .withOpacity(0.5)
                                          : AppColor.insideContaiinerBackground,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.mail_outline_rounded,
                                        color: AppColor.blackButtonBackground,
                                      ),
                                      labelText: 'Phone Number',
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                    validator: AuthFormValidation()
                                        .phoneNumberValidator,
                                    onChanged: (value) {
                                      setState(() {
                                        AuthController.instance.phoneNumber;
                                      });
                                    },
                                  ),
                                  onFocusChange: (hasFocus) {
                                    setState(() {
                                      isPhopneNumber = hasFocus;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Focus(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    controller: AuthController.instance.otp,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: isOTP
                                          ? AppColor.insideContaiinerBackground
                                              .withOpacity(0.5)
                                          : AppColor.insideContaiinerBackground,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      labelText: "OTP",
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontFamily: 'fonts/gilroy-light.ttf',
                                      ),
                                      prefixIcon: Image.asset(
                                        'images/icon2.png',
                                        height: 20,
                                      ),
                                      suffixIcon: Container(
                                        height: 30,
                                        margin: EdgeInsets.only(
                                            right: 10, top: 8, bottom: 8),
                                        width: 100,
                                        decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: isOTP
                                                      ? AppColor.greyButtonFade
                                                      : AppColor.redTextColor,
                                                  width: 1,
                                                  style: BorderStyle.solid),
                                              top: BorderSide(
                                                  color: isOTP
                                                      ? AppColor.greyButtonFade
                                                      : AppColor.redTextColor,
                                                  width: 1,
                                                  style: BorderStyle.solid),
                                              left: BorderSide(
                                                  color: isOTP
                                                      ? AppColor.greyButtonFade
                                                      : AppColor.redTextColor,
                                                  width: 1,
                                                  style: BorderStyle.solid),
                                              right: BorderSide(
                                                  color: isOTP
                                                      ? AppColor.greyButtonFade
                                                      : AppColor.redTextColor,
                                                  width: 1,
                                                  style: BorderStyle.solid),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: AppColor
                                                .insideContaiinerBackground),
                                        child: TextButton(
                                          onPressed: () {
                                            SendOTP().sendOtp();
                                          },
                                          child: Text(
                                            'Receive OTP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    'fonts/gilroy-light.ttf',
                                                color: isOTP
                                                    ? AppColor.greyButtonFade
                                                    : AppColor.redTextColor,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // validator: (value) {
                                    //   if (value!.isEmpty || !value.isNum) {
                                    //     return 'Enter only numbers';
                                    //   }
                                    //   return null;
                                    // },
                                    validator:
                                        AuthFormValidation().otpValidator,
                                  ),
                                  onFocusChange: (hasFocus) {
                                    setState(() {
                                      isOTP = hasFocus;
                                    });
                                  },
                                ),
                                SizedBox(height: 40),
                                GestureDetector(
                                  onTap: () {
                                    if (!formkey.currentState!.validate()) {
                                      Get.snackbar(
                                          'Next', 'All feilds are required',
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor:
                                              AppColor.greyButtonFade);
                                      return;
                                    } else {
                                      Get.snackbar('Success', 'Enter password',
                                          snackStyle: SnackStyle.FLOATING,
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.white);
                                    }
                                    SendOTP().verifyOtp();
                                    Get.to(
                                      () => GuestPasswordSetUp(
                                          username: '', email: '', otp: ''),
                                    );
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 319,
                                    decoration: BoxDecoration(
                                      color: isOTP
                                          ? AppColor.redTextColor
                                          : AppColor.nextRegisterButton,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
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
                                                color: isOTP
                                                    ? AppColor
                                                        .iconButtonBackground
                                                    : AppColor
                                                        .redButtonBackground,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
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
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 5),
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
                                      onPressed: () {
                                        // GoogleLoginController.instance.login();
                                      },
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
        ),
        panelBuilder: (controller) => SlidingUpPanelWidget(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }
}
