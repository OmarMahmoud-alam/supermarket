import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/common/utils/validation_functions.dart';
import 'package:supermarket/view/login_register/login.dart';
import 'package:supermarket/view/login_register/otpview.dart';

class LoginController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var isregisterLoad = false;

  Future<void> registerWithEmail() async {
    // TODO: implement registerWithEmail
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        nameController.text.isEmpty) {
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
    } else if (passwordController.text != confirmController.text) {
      Get.snackbar(
        'login error',
        'password not same  ',
        backgroundColor: Colors.red,
      );
    }
    try {
      isregisterLoad = true;
      update();
      if (formKey.currentState!.validate()) {
        var result = await DioHelper.postData(url: ApiUrl.signUp, data: {
          "name": nameController.text.trim(),
          "email": emailController.text.trim(),
          "password": passwordController.text,
          "c_password": confirmController.text
        });
        if (result.data['message'] == 'success') {
          Apivar.token = result.data['accessToken'];

          Get.snackbar('Register done', 'Register account ave success',
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 2));
          //  await Prefs.setString('token', Apivar.token!);

          Get.to(() => Otpview(
                email: emailController.text.toString(),
              ));
        } else {
          Get.snackbar('error', result.data.toString(),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5));
        }
      }
      isregisterLoad = false;

      update();
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        backgroundColor: Colors.red,
      );
    }
    isregisterLoad = false;
    update();
  }

  void movetologinview() {
    Get.to(() => Login());
  }
}
