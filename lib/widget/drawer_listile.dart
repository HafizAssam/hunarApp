import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerListile extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function() onPressed;
  const DrawerListile(
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onPressed,
          leading: icon,
          //  Icon(
          //   Icons.credit_card,
          //   color: const Color(0xff00D7CC),
          //   size: 22.sp,
          // ),
          title: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                letterSpacing: 1,
                color: const Color(0xff2a3d66),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
