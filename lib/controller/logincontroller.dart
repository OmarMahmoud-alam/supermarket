import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/common/utils/shered_helper.dart';
import 'package:supermarket/common/utils/validation_functions.dart';
import 'package:supermarket/view/login_register/otpview.dart';
import 'package:supermarket/view/login_register/register.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var isloginLoad = false;

  Future<void> loginWithEmail() async {
    Get.log("Login With Email");
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(
        'login error',
        'Email or password is empity',
        backgroundColor: Colors.red,
      );
    } else if (isEmail(emailController.text)) {
      Get.snackbar(
        'login error',
        'Email is wrong formula ',
        backgroundColor: Colors.red,
      );
    }
    try {
      isloginLoad = true;
      update();
      if (formKey.currentState!.validate()) {
        var result = await DioHelper.postData(url: ApiUrl.login, data: {
          "email": emailController.text.trim(),
          "password": passwordController.text
        });
        if (result.data['message'] == 'success') {
          Apivar.token = result.data['accessToken'];
          if (result.data["verify_at"] != null) {
            await Prefs.setString('token', Apivar.token!);

            Get.offAllNamed(
              "/home",
            );
          } else {
            Get.to(() => Otpview(
                  email: emailController.text.toString(),
                ));
          }
        } else {
          Get.snackbar('error', result.data.toString(),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5));
        }
      }
      isloginLoad = false;

      update();
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        backgroundColor: Colors.red,
      );
    }
    isloginLoad = false;
    update();
  }

  void movetoRgisteview() {
    Get.to(() => const RegisterView());
  }
}
