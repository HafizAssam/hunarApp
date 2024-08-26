import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/Invitation/accept_invitation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AcceptInvitation(),
                ),
              );
            },
            icon: const Icon(
              Icons.person_2_outlined,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: const Color(0xff00D7CC),
              child: Text(
                "Find your friends",
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 18,
                                spreadRadius: 3)
                          ]),
                      child: const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            hintText: "Hi Assam, Type an exact username",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: "Nunito",
                              // letterSpacing: 1,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50)
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                          ),
                        ]),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      // size: 35,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset("assets/image/invite.jpg"),
            ),
            // SvgPicture.asset("assets/image/inviteFriend.svg"),
            Text(
              textAlign: TextAlign.center,
              "Search For your friend on Nayamo or \ninvite yor friend on Nayamo",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.sp,
                  // letterSpacing: 1,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Invite a friend",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      // letterSpacing: 1,
                      color: Colors.white,
                    ),
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
