import 'package:flutter/material.dart';
import 'package:loginpage/Homepage.dart';
import 'package:loginpage/Registration.dart';
import 'package:loginpage/Splashscreen.dart';
import 'package:loginpage/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "Splashscreen",
    routes: {
    "Splashscreen":(context)=> const SplashScreen(),
    "login": (context) =>const MyLogin(),
    "Registration":(context) => const MyRegister(),
    "Homepage":(context) =>const HomeRoute(),
  },
  ));
}
