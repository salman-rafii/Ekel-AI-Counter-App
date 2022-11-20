import 'dart:async';

import 'package:counter_app_ekel_ai_task/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splash-screen";
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.routeName, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "EKEL AI Counter",
              letterSpacing: 7.0,
              color: Color(
                0xff004080,
              ),
              fontSize: 35.0,
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(
              color: Color(
                0xff004080,
              ),
            )
          ],
        ),
      ),
    );
  }
}
