// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:spik_app/controller/google_home_controller.dart';
// import 'package:spik_app/widgets/custom_dailog.dart';

// class GoogleLoginController extends GetxController {
//   static GoogleLoginController instance = Get.find();
//   @override
//   void onInit() async {
//     super.onInit();
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {}

//   void login() async {
//     CustomFullScreenDialog.showDialog();
//     GoogleSignInAccount? googleSignInAccount =
//         await HomeController.instance.googleSign.signIn();
//     if (googleSignInAccount == null) {
//       CustomFullScreenDialog.cancelDialog();
//     } else {
//       GoogleSignInAuthentication googleSignInAuthentication =
//           await googleSignInAccount.authentication;
//       OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken);
//       await HomeController.instance.firebaseAuth
//           .signInWithCredential(oAuthCredential);
//       CustomFullScreenDialog.cancelDialog();
//     }
//   }
// }
