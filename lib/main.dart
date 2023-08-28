import 'package:calc/screens/home_screen.dart';
import 'package:calc/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const HomeScreen(),
      },
      initialRoute: "/",
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}
