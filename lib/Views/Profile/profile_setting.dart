import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/widget/pr_setting_edit.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              // color: Colors.amber,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130)),
                color: const Color(0xff671AFC),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, right: 20, left: 20, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.settings,
                        size: 23,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Settings",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Row(
                            children: [
                              CircularProfileAvatar(
                                "",
                                backgroundColor: Colors.deepPurpleAccent,
                                borderWidth: 1.5,
                                borderColor: Colors.deepPurpleAccent,
                                radius: 40,
                                elevation: 20,
                                cacheImage: true,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Assam Asim",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "Profile Setting",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: const Color(0xff671AFC),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const PrSettingEdit(title: "Edit Name"),
                        const PrSettingEdit(title: "Edit Phone Number"),
                        const PrSettingEdit(title: "Change Password"),
                        PrSettingEdit(
                          title: "Email Status",
                          secondryWidget: Row(
                            children: [
                              Text(
                                "Not Verified",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w700,
                                  // fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_right_alt_sharp,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "Notificatin Setting",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: const Color(0xff671AFC),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        PrSettingEdit(
                            title: "Push Notificatins",
                            secondryWidget: Switch(
                              // activeColor: const Color(0xff671AFC),
                              activeTrackColor: const Color(0xff671AFC),
                              value: light,
                              onChanged: (value) {
                                setState(() {
                                  light = value;
                                });
                              },
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "Application Setting",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: const Color(0xff671AFC),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        PrSettingEdit(
                          title: "Background Updates",
                          secondryWidget: Row(
                            children: [
                              Text(
                                "Not Allowed",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w700,
                                  // fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_right_alt_sharp,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
