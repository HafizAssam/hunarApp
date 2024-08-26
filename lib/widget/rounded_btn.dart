import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class RoundedBtn extends StatelessWidget {
  final String btnText;
  final RoundedLoadingButtonController buttonController;
  final void Function() onPressed;
  const RoundedBtn({
    super.key,
    required this.btnText,
    required this.buttonController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "auth",
      child: RoundedLoadingButton(
        width: 2000,
        borderRadius: 10,
        color: const Color(0xff00C1AA),
        controller: buttonController,
        onPressed: onPressed,
        child: Text(
          btnText,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
