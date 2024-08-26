import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/HomePage/dashboard.dart';
import 'package:nyamo/widget/drawer_listile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  CircularProfileAvatar(
                    "",
                    backgroundColor: Colors.cyanAccent,
                    borderWidth: 1.5,
                    borderColor: Colors.deepPurpleAccent,
                    radius: 40,
                    elevation: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Assam",
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp,
                              letterSpacing: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "assam@gmail.com",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Premium",
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
            const Expanded(
              flex: 0,
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerListile(
                    text: "Subscription",
                    icon: Icon(
                      Icons.credit_card,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                  DrawerListile(
                    text: "Settings",
                    icon: Icon(
                      Icons.settings,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                  DrawerListile(
                    text: "Help",
                    icon: Icon(
                      Icons.question_mark_rounded,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                  DrawerListile(
                    text: "Feedback",
                    icon: Icon(
                      Icons.message_rounded,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                  DrawerListile(
                    text: "Tell Other",
                    icon: Icon(
                      Icons.switch_access_shortcut_add_rounded,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                  DrawerListile(
                    text: "Rate the App",
                    icon: Icon(
                      Icons.star_half_rounded,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DrawerListile(
                    text: "Sing Out",
                    icon: Icon(
                      Icons.logout_rounded,
                      color: const Color(0xff00D7CC),
                      size: 22.sp,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            )),
          ],
        ),
      ),
      body: const Column(
        children: [
          DashboardScreen(),
        ],
      ),
    );
  }
}
