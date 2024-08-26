import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextfield extends StatelessWidget {
  final String lableText;
  final double lableFontSize;
  final Icon prefixicon;
  final bool obscureText;
  const AuthTextfield({
    super.key,
    required this.lableText,
    required this.lableFontSize,
    required this.prefixicon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        style: GoogleFonts.poppins(
          fontSize: 18,
        ),
        decoration: InputDecoration(
            fillColor: const Color(0xffE7E7F2),
            filled: true,
            prefixIcon: prefixicon,
            //  const Icon(
            //   Icons.alternate_email,
            //   size: 20,
            // ),
            prefixIconColor: const Color(0xff00205C),
            label: Text(
              lableText,
            ),
            labelStyle: GoogleFonts.poppins(fontSize: lableFontSize),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )));
  }
}
