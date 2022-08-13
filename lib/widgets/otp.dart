import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/widgets/color.dart';

class SendOTP extends StatelessWidget {
  SendOTP({Key? key}) : super(key: key);

  EmailAuth emailAuth = new EmailAuth(sessionName: "OTP session");

  void sendOtp() async {
    var res = await emailAuth.sendOtp(
        recipientMail: AuthController.instance.email.text, otpLength: 4);
    if (res) {
      Get.snackbar('OTP', 'OTP sent. Please check your email',
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
      print('OTP sent. Please check your email');
    } else {
      Get.snackbar('OTP', 'Error occured in OTP',
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
      print('Error occured in OTP');
    }
  }

  void verifyOtp() {
    var res = emailAuth.validateOtp(
        recipientMail: AuthController.instance.email.text,
        userOtp: AuthController.instance.otp.text);

    if (res) {
      print('otp verified');
      Get.snackbar('OTP', 'OTP verified',
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    } else {
      print('invalid otp');
      Get.snackbar('OTP', 'invalid OTP',
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
