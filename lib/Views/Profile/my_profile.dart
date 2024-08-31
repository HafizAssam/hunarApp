import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyamo/Views/Profile/profile_setting.dart';
import 'package:nyamo/widget/profile_card_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: sCrossAxisAlignment.end,
            children: [
              Text(
                "MY PROFILE",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CircularProfileAvatar(
                "",
                backgroundColor: Colors.cyanAccent,
                borderWidth: 1.5,
                borderColor: Colors.deepPurpleAccent,
                radius: 80,
                elevation: 20,
                cacheImage: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Assam Asim",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 06,
              ),
              Text(
                "@asssam56",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xff671AFC),
                    width: 2,
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileSetting(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Edit Profile Details",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff671AFC),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileCardDetails(
                clr: Colors.grey.shade200,
                iconData: Icons.alternate_email,
                type: "Email",
                val: "assam@gmail.com",
              ),
              const ProfileCardDetails(
                clr: Colors.transparent,
                iconData: Icons.flag_outlined,
                type: "Country",
                val: "Pakistan",
              ),
              ProfileCardDetails(
                clr: Colors.grey.shade200,
                iconData: Icons.phone,
                type: "Phone",
                val: "+92 3212292711",
              ),
              more
                  ? const ProfileCardDetails(
                      clr: Colors.transparent,
                      iconData: Icons.female,
                      type: "Gender",
                      val: "Male",
                    )
                  : Container(),
              more
                  ? ProfileCardDetails(
                      clr: Colors.grey.shade200,
                      iconData: Icons.person,
                      type: "Partner",
                      val: "Nasik",
                    )
                  : Container(),
              more
                  ? const ProfileCardDetails(
                      clr: Colors.transparent,
                      iconData: Icons.fingerprint,
                      type: "UID",
                      val: "WU6937xtfYU6547HfdB",
                    )
                  : Container(),
              more
                  ? ProfileCardDetails(
                      clr: Colors.grey.shade200,
                      iconData: Icons.schedule,
                      type: "Acount Created",
                      val: "28-03-2002",
                    )
                  : Container(),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    more = !more;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    more ? "- show less" : "+ show more",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 22.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [Color(0xffff9966), Color(0xffff5e62)],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Subscribe to",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Primum",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Subscribe on",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "N/A",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
