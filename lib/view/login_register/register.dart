import 'package:flutter/material.dart';

import 'package:supermarket/common/common_widget/login/customtextfield.dart';
import 'package:supermarket/common/utils/tt.dart';
import 'package:gap/gap.dart';
import 'package:supermarket/common/utils/validation_functions.dart';
import 'package:supermarket/theme/main_colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Image.asset('assest/image/logo1.png'),
          const Gap(25),
          Text(
            'Welcome to Grocify !!',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              // height: 1.625 * ffem / fem,
              letterSpacing: 0.5,
              color: TColor.primaryText,
            ),
          ),
          const Gap(15),
          Text(
            'Register to Continue',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              // height: 2.1666666667*ffem/fem,
              letterSpacing: 0.5,
              color: TColor.secondaryText,
            ),
          ),
          const Gap(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Custominputfield(
              prefixicon: const Icon(
                Icons.person,
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'Name',
              validator: (s) {
                if (s == null || s == "") {
                  return 'can\'t be empty ';
                }
                return null;
              },
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Custominputfield(
              prefixicon: const Icon(
                Icons.email,
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'Email ',
              validator: (s) {
                if (s == null || s == "") {
                  return 'can\'t be empty ';
                }
                return null;
              },
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Custominputfield(
              prefixicon: const Icon(
                Icons.lock,
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'Password',
              isPassword: true,
              /*Icon(registercontroller.ispassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined)*/
              validator: (s) {
                if (isValidPassword(s)) {
                  return 'pls enter valid password ';
                }
                return null;
              },
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Custominputfield(
              prefixicon: const Icon(
                Icons.lock,
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'Re-type password',
              isPassword: true,
              validator: (s) {
                if (isValidPassword(s)) {
                  return 'pls enter valid password ';
                }
                return null;
              },
            ),
          ),
          const Gap(40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColor.primarybutton,
                  foregroundColor: TColor.white),
              child: Text("Sign In",
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.white,
                    fontWeight: FontWeight.w700,
                  )),
              onPressed: () {},
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have account? Click",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  )),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    //minimumSize: Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: Text(" Register",
                    style: TextStyle(
                      color: TColor.primarybuttontext,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Forget Password? Click",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  )),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    //minimumSize: Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                onPressed: () {},
                child: Text(" Reset ",
                    style: TextStyle(
                      fontSize: 14,
                      color: TColor.primarybuttontext,
                      fontWeight: FontWeight.w700,
                    )),
              )
            ],
          )
        ],
      ))),
    );
  }
}
