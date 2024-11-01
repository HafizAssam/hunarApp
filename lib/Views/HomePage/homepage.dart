import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/HomePage/dashboard.dart';
import 'package:nyamo/Views/Invitation/invite_friend.dart';
import 'package:nyamo/Views/Profile/my_profile.dart';
import 'package:nyamo/widget/drawer_listile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedindex = 1;
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
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.account_circle_outlined,
            Icons.home_outlined,
            Icons.person_add_alt_outlined,
            // Icons.notifications_none,
          ],
          // scaleFactor: 2,
          // notchMargin: 9,
          // gapLocation: GapLocation.end,
          gapWidth: 3,
          iconSize: 30,
          activeColor: Colors.purple,
          inactiveColor: Colors.black,
          splashSpeedInMilliseconds: 300,
          activeIndex: selectedindex,
          onTap: (p0) {
            selectedindex = p0;

            setState(() {});
          },
        ),
        //  CurvedNavigationBar(
        //   index: selectedindex,
        //   // animationDuration: const Duration(milliseconds: 100),
        //   // color: Colors.cyan,
        //   // animationCurve:

        //   buttonBackgroundColor: Colors.purpleAccent,
        //   backgroundColor: Colors.transparent,
        //   height: 50,
        //   items: const [
        //     Icon(
        //       Icons.home_outlined,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.category_outlined,
        //       size: 30,
        //       color: Colors.black,
        //     ),
        //     // Icon(
        //     //   Icons.favorite_border,
        //     //   size: 30,
        //     //   color: Colors.white,
        //     // ),
        //   ],
        //   onTap: (index) {
        //     selectedindex = index;

        //     setState(() {});
        //   },
        // )

        body: getSelectedWidget(index: selectedindex));
  }
}

Widget? getSelectedWidget({required int index}) {
  Widget? widget;
  switch (index) {
    case 0:
      widget = const MyProfile();
      break;
    case 1:
      widget = const DashboardScreen();
      break;
    case 2:
      widget = const InviteFriend();
      break;
    default:
  }
  return widget;
}
