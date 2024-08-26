import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/Auth/forgot_password.dart';
import 'package:nyamo/Views/Auth/registration.dart';
import 'package:nyamo/Views/Profile/profile_setup.dart';
import 'package:nyamo/widget/auth_textfield.dart';
import 'package:nyamo/widget/rounded_btn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final RoundedLoadingButtonController loginbtnController =
      RoundedLoadingButtonController();

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
                        "Sing in to Nyamo",
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
              RoundedBtn(
                btnText: "Login",
                buttonController: loginbtnController,
                onPressed: () {
                  Timer(const Duration(seconds: 4), () {
                    loginbtnController.success();
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xffC1272D),
                        fontSize: 15.sp,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
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
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sing Up",
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
