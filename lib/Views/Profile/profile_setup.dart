import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:nyamo/Views/HomePage/homepage.dart';

import 'package:nyamo/widget/auth_textfield.dart';
import 'package:nyamo/widget/rounded_btn.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final RoundedLoadingButtonController profilebtnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Nyamo",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: Column(
          children: [
            CircularProfileAvatar(
              "",
              backgroundColor: Colors.black,
              borderColor: Colors.green,
              borderWidth: 4,
              initialsText: Text(
                "+",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const AuthTextfield(
              lableText: "Your Name",
              lableFontSize: 20,
              prefixicon: Icon(
                Icons.face,
                size: 20,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            const AuthTextfield(
              lableText: "Your username ",
              lableFontSize: 20,
              prefixicon: Icon(
                Icons.alternate_email,
                size: 20,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isMale ? Colors.cyan : Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 9),
                              blurRadius: 30)
                        ]),
                    child: const Icon(
                      Icons.male,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                    // print("female pressed");
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: !isMale ? Colors.purple : Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 9),
                              blurRadius: 30)
                        ]),
                    child: const Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 250,
              child: RoundedBtn(
                btnText: "Next",
                buttonController: profilebtnController,
                onPressed: () {
                  Timer(const Duration(seconds: 4), () {
                    profilebtnController.success();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
