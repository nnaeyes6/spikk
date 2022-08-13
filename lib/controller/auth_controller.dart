import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/bottom_nav_pages/nav_dashboard_page.dart';
import 'package:spik_app/screens/guest/register_all.dart';
import 'package:spik_app/screens/guest/register_page.dart';
import 'package:spik_app/screens/login_onboarding_page.dart';
import 'package:spik_app/screens/onboarding.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  RxBool isLoggedIn = false.obs;
  TextEditingController email = TextEditingController();

  TextEditingController userName = TextEditingController();

  TextEditingController otp = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController reEnterPassword = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  String usersCollection = 'users';

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user will be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      print('logged in page');
      Get.offAll(() => OnboardingPage());
    } else {
      Get.offAll(() => DashboardPage());
    }
  }

  void signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar('Sign in failed.', 'Try again.',
          snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
      return null;
    }
  }

  void signUp(String email, String password) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((result) {
        String _userId = result.user!.uid;
        FirebaseFirestore.instance
            .collection(usersCollection)
            .doc(_userId)
            .set({
          'userName': userName,
          'email': email,
          'id': _userId,
        });
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Register Failed", "Account failed to create.",
          snackPosition: SnackPosition.BOTTOM, snackStyle: SnackStyle.GROUNDED);
      return null;
    }
  }

  void signOut() async {
    auth.signOut();
  }
}
