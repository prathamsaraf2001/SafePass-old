import 'package:flutter/material.dart';
import 'package:safe_pass/drawer/feedback.dart';
import 'package:safe_pass/drawer/profile.dart';
import 'package:safe_pass/drawer/settings.dart';
import 'package:safe_pass/drawer/share.dart';
import 'package:safe_pass/homepage/NotesPage.dart';
import 'drawer/about.dart';
import 'homepage/open_notes.dart';
import 'log_in/forgot_password.dart';
import 'sign_up/complete_profile.dart';
import 'homepage/homepage.dart';
import 'log_in/login_page.dart';
import 'opening_page/opening_page.dart';
import 'sign_up/sign_up.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ProximaSoft'),
      initialRoute: "/openingscreen",
      routes: {
        "/loginpage": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/openingscreen": (context) => OpeningScreen(),
        "/signup": (context) => SignUp(),
        "/completeprofile": (context) => CompleteProfile(
              emailHolder: '',
            ),
        "ForgotPassword.id": (context) => ForgotPassword(),
        "/NotesPage": (context) => NotesPage(),
        "/OpenPassword": (context) => OpenPassword(),
        "/profile": (context) => Profile(
              emailHolder: '',
              lastnameHolder: '',
              nameHolder: '',
              numberHolder: '',
            ),
        "/about": (context) => About(),
        "/settings": (context) => Settings(),
        "/share": (context) => Share(),
        "/feedback": (context) => FeedbackApp(),
      },
    );
  }
}
