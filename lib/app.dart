import 'package:flutter/material.dart';
import 'package:food_nest/ui/on_boarding/on_boarding_screen.dart';
import 'package:food_nest/ui/screens/skeleton_screen.dart';
import 'package:food_nest/ui/screens/splash_screen.dart';

class FoodNestApp extends StatefulWidget {
  const FoodNestApp({super.key});

  @override
  State<FoodNestApp> createState() => _FoodNestAppState();
}

class _FoodNestAppState extends State<FoodNestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Nest',
      initialRoute: '/',
      routes: {
        SplashScreen.name: (_) => SplashScreen(),
        OnBoardingScreen.name: (_)=> OnBoardingScreen(),
        SkeletonScreen.name:(_)=>SkeletonScreen(),
      },
    );
  }
}
