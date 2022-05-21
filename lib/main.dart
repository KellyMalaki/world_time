import 'package:flutter/material.dart';
import 'package:world_time/pages/ChooseLocation.dart';
import 'package:world_time/pages/SplashScreen.dart';
import 'pages/Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => SplashScreen(),
      "/choose_location": (context) => ChooseLocation(),
      "/home": (context) => Home(),
    }
  ));
}
