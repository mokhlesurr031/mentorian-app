import "package:flutter/material.dart";
import "package:mentors/pages/home_page.dart";
import "package:mentors/pages/user/auth/login.dart";
import 'package:mentors/pages/welcome_page.dart';
import "package:mentors/utils/routes.dart";

void main() {
  runApp(MentorApp());
}

class MentorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        MyRoutes.welcomeRoute: (context) => WelcomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoute.
      },
    );
  }
}
