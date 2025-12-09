import 'package:flutter/material.dart';
import 'package:food_nest/ui/screens/skeleton_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static String name = 'on-boarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final GlobalKey<IntroductionScreenState> _introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    // Navigator.pushNamedAndRemoveUntil(context, SkeletonScreen.name, (p) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Text('data') ;
  }
}
