// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:spik_app/screens/google_login.dart/google_login_view.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'package:spik_app/screens/login_onboarding_page.dart';

// class HomeController extends GetxController {
//   static HomeController instance = Get.find();

//   late GoogleSignIn googleSign;
//   var isSignIn = false.obs;
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onReady() async {
//     googleSign = GoogleSignIn();
//     ever(isSignIn, handleAuthStateChanged);
//     isSignIn.value = await firebaseAuth.currentUser != null;
//     firebaseAuth.authStateChanges().listen((event) {
//       isSignIn.value = event != null;
//     });

//     super.onReady();
//   }

//   @override
//   void onClose() {}

//   void handleAuthStateChanged(isLoggedIn) {
//     if (isLoggedIn == null) {
//       print('logged in page');
//       Get.offAll(() => GoogleLoginView(firebaseAuth.currentUser));
//     } else {
//       Get.offAll(() => LoginPage());
//     }
//   }
// }
