import 'package:flutter/material.dart';
import 'package:kriti/menus/spectrum_south.dart';
import 'package:kriti/screens/home_screen.dart';
import 'package:kriti/screens/login_sreen.dart';
import 'package:kriti/screens/registration_screen.dart';
import 'package:kriti/screens/restaurant.dart';
import 'package:kriti/screens/welcome_screen.dart';
import 'menus/blueline.dart';
import 'menus/ccd.dart';
import 'menus/florentine.dart';
import 'menus/foodies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        HomeScreen.id: (context)=> HomeScreen(),
        menu_1.id: (context)=>menu_1(),
        menu_2.id: (context)=>menu_2(),
        menu_3.id: (context)=>menu_3(),
        menu_4.id: (context)=>menu_4(),
        menu_5.id: (context)=>menu_5(),
      },
    );
  }
}



