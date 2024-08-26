import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/widget/auth_textfield.dart';
import 'package:nyamo/widget/rounded_btn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController forgotbtnController =
      RoundedLoadingButtonController();

  ForgotPassword({super.key});

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
              Row(
                children: [
                  Text(
                    "Forgot Your Password?",
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
              SizedBox(
                height: 20.h,
                child: Image.asset(
                  "assets/image/lock_reset.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "To request for a new one, type your email address below. A link to reset the password will be sent to that email.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    // fontWeight: FontWeight.bold,
                    color: const Color(0xff00205C),
                  ),
                ),
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
              RoundedBtn(
                btnText: "Send",
                buttonController: forgotbtnController,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
