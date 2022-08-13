import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/controller/auth_form_validation.dart';
import 'package:spik_app/screens/agreements/terms_and_conditions.dart';
import 'package:spik_app/screens/guest/guest_enable_location.dart';
import 'package:spik_app/widgets/color.dart';

class GuestPasswordSetUp extends StatefulWidget {
  // AuthFormValidation _authFormValidation = Get.put(AuthFormValidation());
  // GoogleLoginController _googleLoginController =
  //     Get.put(GoogleLoginController());
  final String username;
  final String email;
  final String otp;

  GuestPasswordSetUp(
      {Key? key,
      required this.username,
      required this.email,
      required this.otp})
      : super(key: key);

  @override
  State<GuestPasswordSetUp> createState() => _GuestPasswordSetUpState();
}

class _GuestPasswordSetUpState extends State<GuestPasswordSetUp> {
  bool isChecked = false;
  bool _showPassword = false;
  bool _showConfirmedPassword = false;
  bool _obscureText = true;
  bool _obscureText2 = true;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    AuthController.instance.password.dispose();
    AuthController.instance.reEnterPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Form(
        key: formkey,
        child: SafeArea(
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
                  height: 590,
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
                          height: 480,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: _obscureText,
                                controller: AuthController.instance.password,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      AppColor.insideContaiinerBackground,
                                  prefixIcon: Image.asset('images/keylock.png'),
                                  suffixIcon: IconButton(
                                      icon: _showPassword
                                          ? Icon(Icons.visibility)
                                          : Image.asset('images/eye_icon.png'),
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
                                validator:
                                    AuthFormValidation().passwordValidator,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      AuthController.instance.password;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  obscureText: _obscureText2,
                                  decoration: InputDecoration(
                                    fillColor:
                                        AppColor.insideContaiinerBackground,
                                    filled: true,
                                    prefixIcon:
                                        Image.asset('images/keylock.png'),
                                    suffixIcon: IconButton(
                                        icon: _showConfirmedPassword
                                            ? Icon(Icons.visibility)
                                            : Image.asset(
                                                'images/eye_icon.png'),
                                        onPressed: () => setState(() {
                                              _obscureText2 = !_obscureText2;
                                              _showConfirmedPassword =
                                                  !_showConfirmedPassword;
                                            })),
                                    labelText: 'Your Password',
                                    labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontFamily: 'fonts/gilroy-light.ttf',
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                  validator: AuthFormValidation()
                                      .confirmPasswordValidator,
                                  onChanged: (value) {
                                    setState(() {
                                      AuthController.instance.password;
                                    });
                                  }),
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
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => TermsAndConditions());
                                    },
                                    child: Text(
                                      'terms of service',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                    ),
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
                                  color: isChecked == false
                                      ? AppColor.nextRegisterButton
                                      : AppColor.redTextColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    if (!formkey.currentState!.validate()) {
                                      return;
                                    } else {
                                      Get.snackbar('Success',
                                          'Password successfully created',
                                          snackStyle: SnackStyle.FLOATING,
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.white);
                                    }

                                    Get.to(
                                      () => GuestEnableLocation(
                                          password: AuthController
                                              .instance.password.text
                                              .trim(),
                                          reEnterPassword: AuthController
                                              .instance.reEnterPassword.text
                                              .trim()),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Center(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                              color:
                                                  AppColor.iconButtonBackground,
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
                                margin: EdgeInsets.only(bottom: 20),
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
    );
  }
}
