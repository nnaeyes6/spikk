import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/screens/login_onboarding_page.dart';
import 'package:spik_app/screens/onboarding.dart';
import 'package:spik_app/screens/pickerpages/picker_register_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spikk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/OnboardingPage', page: () => OnboardingPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/pickerLoginDetails', page: () => PickerLoginDetails()),
      ],
      home: OnboardingPage(),
    );
  }
}
