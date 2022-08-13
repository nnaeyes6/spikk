import 'package:get/get.dart';
import 'package:spik_app/controller/auth_controller.dart';
import 'package:spik_app/controller/auth_form_validation.dart';
import 'package:spik_app/controller/google_home_controller.dart';
import 'package:spik_app/controller/google_login_controller.dart';
import 'package:spik_app/controller/onboarding_controller.dart';
import 'package:spik_app/controller/welcome_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => OnboardingController());
    Get.lazyPut(() => AuthFormValidation());

    // Get.lazyPut(() => HomeController());

    // Get.lazyPut(() => GoogleLoginController());
    // Get.lazyPut(() => WelcomeController());
  }
}
