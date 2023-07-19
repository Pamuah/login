import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

void main(List<String> args) {
  runApp(const verificationCode());
}

class verificationCode extends StatefulWidget {
  const verificationCode({super.key});

  @override
  State<verificationCode> createState() => _verificationCodeState();
}

class _verificationCodeState extends State<verificationCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Align(
                child: Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                child: Text(
                  "please type the verification code sent to\n blessingbotwe33@gmail.com",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 50,
              ),
              Pinput(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 35.0),
              RichText(
                text: TextSpan(
                  text: "Didn't receive a code ? ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Please Resend',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
