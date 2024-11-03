import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:nyamo/Views/Auth/login.dart';
// import 'package:nyamo/Views/Invitation/accept_invitation.dart';
// import 'package:nyamo/Views/Invitation/invite_friend.dart';
// import 'package:nyamo/Views/Auth/forgot_password.dart';
// import 'package:nyamo/Views/Profile/profile_setup.dart';
// import 'package:nyamo/Views/Auth/login.dart';
// import 'package:nyamo/Views/Auth/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      );
    });
  }
}
