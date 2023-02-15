import 'package:flutter/material.dart';
import 'package:kriti/screens/cart_screen.dart';
import 'package:kriti/screens/home_screen.dart';
import 'package:kriti/screens/login_sreen.dart';
import 'package:kriti/screens/menu.dart';
import 'package:kriti/screens/registration_screen.dart';
import 'package:kriti/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: menu.id,
      routes: {
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        HomeScreen.id: (context)=> HomeScreen(),
        menu.id:(context) => menu(),
      },
    );
  }
}



