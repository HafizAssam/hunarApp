import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/Auth/login.dart';
import 'package:nyamo/Views/Profile/profile_setup.dart';
import 'package:nyamo/widget/auth_textfield.dart';
import 'package:nyamo/widget/rounded_btn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class RegistrationScreen extends StatelessWidget {
  final RoundedLoadingButtonController registerbtnController =
      RoundedLoadingButtonController();
  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
        title: Text(
          "Nyamo",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Sing up to Nyamo",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff00205C),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "To connect with \nyour partner",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff00205C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthTextfield(
                lableText: "UserName",
                lableFontSize: 20,
                prefixicon: Icon(
                  Icons.person_2_rounded,
                  size: 20,
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthTextfield(
                lableText: "Email",
                lableFontSize: 20,
                prefixicon: Icon(
                  Icons.alternate_email,
                  size: 20,
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthTextfield(
                lableText: "Password",
                lableFontSize: 20,
                prefixicon: Icon(
                  Icons.password,
                  size: 20,
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthTextfield(
                lableText: "Confirm Password",
                lableFontSize: 20,
                prefixicon: Icon(
                  Icons.lock_reset,
                  size: 20,
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              RoundedBtn(
                btnText: "Register",
                buttonController: registerbtnController,
                onPressed: () {
                  Timer(const Duration(seconds: 4), () {
                    registerbtnController.success();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileSetupScreen(),
                      ),
                    );
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "By registring, you agree to our terms and conditions",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff808080),
                        fontSize: 13.sp,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Register?",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff5A5B5B),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Sing In",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2F76EA),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
