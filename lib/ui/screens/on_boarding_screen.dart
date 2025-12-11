import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_nest/ui/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'category_services_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static String name = 'on-boarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final GlobalKey<IntroductionScreenState> _introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, LoginScreen.name, (p) => false);
  }

  List<PageViewModel> onGetPages() {
    return [
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2, imagePadding: EdgeInsets.all(8)),
        image: Stack(
          children: [
            Positioned(
              top: 80,
              right: -60,
              child: Transform.rotate(
                angle: pi / 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/onboard/onboard_1.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: -50,
              child: Transform.rotate(
                angle: -pi / 14,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/onboard/onboard_2.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        titleWidget: Text(
          'Plan your weekly menu',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        bodyWidget: Text(
          'You can order weekly meals and we\'ll bring\n'
          'them straight to your door',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2, imagePadding: EdgeInsets.all(8)),
        image: Stack(
          children: [
            Positioned(
              top: 80,
              right: -60,
              child: Transform.rotate(
                angle: pi / 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/onboard/onboard_3.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: -50,
              child: Transform.rotate(
                angle: -pi / 14,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/onboard/onboard_4.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        titleWidget: Text(
          'Plan your weekly menu',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        bodyWidget: Text(
          'You can order weekly meals and we\'ll bring\n'
          'them straight to your door',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2, imagePadding: EdgeInsets.all(8)),
        image: Stack(
          children: [
            Positioned(
              top: 80,
              right: -60,
              child: Transform.rotate(
                angle: pi / 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/onboard/onboard_5.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: -50,
              child: Transform.rotate(
                angle: -pi / 14,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/onboard/onboard_6.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        titleWidget: Text(
          'Plan your weekly menu',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        bodyWidget: Text(
          'You can order weekly meals and we\'ll bring\n'
          'them straight to your door',
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black,
        key: _introKey,
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        next: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24),
        done: Text(
          'Got Started',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        dotsDecorator: DotsDecorator(color: Colors.white10, activeColor: Colors.white),
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context),
        pages: onGetPages(),
      ),
    );
  }
}
