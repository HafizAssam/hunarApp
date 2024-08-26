import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  final List<Color> clr;
  final String cardText;
  final Color? textColor;
  final IconData cardIcon;
  final Color? iconColor;
  final double? iconSize;
  final FontWeight? textFontWeight;
  const DashboardCard({
    super.key,
    required this.clr,
    required this.cardText,
    required this.cardIcon,
    this.textFontWeight,
    this.iconColor,
    this.iconSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 3.0),
              blurRadius: 3.0,
            ),
          ],
          gradient: LinearGradient(
            colors: clr,
          ),
        ),
        child: Row(
          children: [
            Icon(
              cardIcon,
              color: iconColor ?? Colors.white,
              size: iconSize ?? 35,
            ),
            const SizedBox(
              width: 8,
            ),
            Flexible(
              child: Text(
                cardText,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontWeight: textFontWeight ?? FontWeight.w300,
                    color: textColor ?? Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
