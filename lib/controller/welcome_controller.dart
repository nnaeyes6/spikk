// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:spik_app/controller/google_home_controller.dart';

// class WelcomeController extends GetxController {
//   static WelcomeController instance = Get.find();
//   late User user;
//   @override
//   void onInit() async {
//     super.onInit();
//     user = Get.arguments;
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {}

//   void logout() async {
//     await HomeController.instance.googleSign.disconnect();
//     await HomeController.instance.firebaseAuth.signOut();
//   }
// }
