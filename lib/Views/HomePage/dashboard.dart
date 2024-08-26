import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/widget/dashboard_card_features.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "DASHBORD",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Your Friend",
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff990099),
                    fontSize: 23,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 08),
            child: Card(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 12, left: 15, right: 8),
                child: Column(
                  children: [
                    Row(
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
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Jayden Black",
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xff4C9CFF),
                                    size: 40,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Bow Lane, West Freeway, Houston, Texas, United State",
                                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.redAccent,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.deepPurple,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(
                                  "User Status",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.redAccent,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.deepPurple,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Mood N/A ",
                              // textScaleFactor: 1,
                              style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              DashboardCard(
                clr: [
                  Color(0xff4FC174),
                  Color(0xff00D7A9),
                ],
                cardText: "Device Info",
                cardIcon: Icons.perm_device_information_rounded,
              ),
              SizedBox(
                width: 8,
              ),
              DashboardCard(
                clr: [
                  Color(0xffF7DB00),
                  Color(0xffF7A100),
                ],
                cardText: "Gallery",
                cardIcon: Icons.image_outlined,
              ),
              SizedBox(
                width: 8,
              ),
              DashboardCard(clr: [
                Color(0xff9A01D6),
                Color(0xffC701D6),
              ], cardText: "Mood", cardIcon: Icons.mood),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff004C99),
                    fontSize: 23,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "Play List",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.redAccent,
                      cardIcon: Icons.play_arrow_sharp,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "Location",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.blueAccent,
                      cardIcon: Icons.location_on_outlined,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "To-do List",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.brown,
                      cardIcon: Icons.library_books,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "Dairy",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.blueGrey,
                      cardIcon: Icons.menu_book_outlined,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "Activity",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.lightBlueAccent,
                      cardIcon: Icons.emergency_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DashboardCard(
                      clr: [
                        Colors.white,
                        Colors.white,
                      ],
                      cardText: "Horoscopes",
                      textColor: Colors.black,
                      textFontWeight: FontWeight.w900,
                      iconColor: Colors.purple,
                      cardIcon: Icons.nightlight_round,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
