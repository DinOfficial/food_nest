import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_nest/ui/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _onMoveNextScreen() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(context, OnBoardingScreen.name, (p) => false),
    );
  }

  @override
  void initState() {
    _onMoveNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Spacer(),
          Center(child: Image.asset('assets/images/food_nest_dark.png', width: 200, height: 200)),
          Spacer(),
        ],
      ),
    );
  }
}
