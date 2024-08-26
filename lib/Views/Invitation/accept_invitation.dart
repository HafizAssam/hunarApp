import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvitation extends StatelessWidget {
  const AcceptInvitation({super.key});

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
              color: Colors.purpleAccent,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: const Color(0xff8C47FB),
              child: Text(
                "See received invitations",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text(
                    "assam@123",
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Assam",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Accept",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 07,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Decline",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              // fontWeight: FontWeight.w600,
                              // fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/image/received.jpg"),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your recevied invitations are currently ",
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      // letterSpacing: 1,
                      color: Colors.cyan,
                    ),
                  ),
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      // letterSpacing: 1,
                      color: Colors.purple,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
