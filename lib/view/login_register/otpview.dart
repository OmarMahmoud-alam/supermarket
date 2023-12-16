import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:supermarket/theme/custom_text_style.dart';

class Otpview extends StatefulWidget {
  final String email;
  const Otpview({super.key, required this.email});

  @override
  State<Otpview> createState() => _OtpviewState();
}

class _OtpviewState extends State<Otpview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Gap(20),
        Image.asset('assest/image/otpimage.png'),
        const Gap(25),
        const Text(
          "Enter Verification Code",
          style: TextStyles.textmedium20,
        ),
        Text("We have sent email to:", style: TextStyles.textregular14),
        Text(maskEmail(widget.email), style: TextStyles.textbold16),
        
        //Text("Please enter the OTP sent to ${widget.email}"),
      ]),
    ));
  }

  String maskEmail(String email) {
    if (email.isEmpty) {
      return '';
    }

    String firstTwoChars = email.substring(0, 3);
    String maskedChars = '*' * (email.length - 3);

    return '$firstTwoChars$maskedChars';
  }
}
