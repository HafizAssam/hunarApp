import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCardDetails extends StatelessWidget {
  final Color clr;
  final IconData iconData;
  final String type;
  final String val;
  const ProfileCardDetails({
    super.key,
    required this.clr,
    required this.iconData,
    required this.type,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: clr,
          //  Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              type,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  val,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
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
