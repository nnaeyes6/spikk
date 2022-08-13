import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/widgets/color.dart';

// ignore: must_be_immutable
class AuthFormValidation extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;

  String? emailValidator(value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (value.isEmpty) {
      return 'Please enter an email.';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Please enter a valid email.';
      } else {
        return null;
      }
    }
  }

  String? userNameValidator(value) {
    if (value!.isEmpty) {
      return 'Please enter a username';
    } else {
      if (value.length < 3) {
        return 'Username must be more than 2 characters';
      }
    }
    return null;
  }

  String? otpValidator(value) {
    if (value.isEmpty) {
      return 'Please enter an otp.';
    } else {
      if (value.length < 4) {
        return 'otp must be in mumber not less than 4 digits';
      }
    }
    return null;
  }

  String? phoneNumberValidator(value) {
    if (value.isEmpty) {
      return 'Please enter your phone number.';
    } else {
      if (value.length < 6) {
        return 'your phone number must be more than 5 digits';
      }
    }

    return null;
  }

  String? passwordValidator(value) {
    RegExp regex = RegExp(r'^(?=.*?[!@#\$&*~])');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Password must contain atleast a spacial character';
      } else {
        return null;
      }
    }
  }

  String? confirmPasswordValidator(value) {
    if (value.isEmpty) {
      return 'Please confirm your password';
    } else {
      if (value != AuthController.instance.password.text) {
        return 'Password did not match';
      }
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
