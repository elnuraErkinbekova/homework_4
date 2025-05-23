import 'package:flutter/material.dart';
import 'package:homework_4/screens/welcome_screen.dart';
import 'package:homework_4/screens/registration_screen.dart';
import 'package:homework_4/screens/first_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/signup': (context) => const RegistrationScreen(),
        '/home': (context) => const FirstScreen(),
      },
    );
  }
}