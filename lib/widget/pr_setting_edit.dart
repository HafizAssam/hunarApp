import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingEdit extends StatelessWidget {
  final String title;
  final Widget? secondryWidget;
  const PrSettingEdit({super.key, required this.title, this.secondryWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          secondryWidget ??
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_right_alt_sharp,
                ),
              )
        ],
      ),
    );
  }
}
