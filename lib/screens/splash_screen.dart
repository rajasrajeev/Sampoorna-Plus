import 'dart:async';

import 'package:flutter/material.dart';
import 'package:student_management/screens/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const Spacer(),
          Image.asset("assets/images/splash.png"),
          const Text(
            "Student Management",
            style: TextStyle(fontSize: 24),
          ),
          const Spacer(),
          const Text("V 1.0.0"),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
