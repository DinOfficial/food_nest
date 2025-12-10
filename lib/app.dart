import 'package:flutter/material.dart';
import 'package:food_nest/ui/screens/login_screen.dart';
import 'package:food_nest/ui/screens/on_boarding_screen.dart';
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
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
          filled: true,
          fillColor: Colors.white10,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
       elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
           backgroundColor:Colors.white12,
           foregroundColor: Colors.white70,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
         )
       ),
       brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Food Nest',
      initialRoute: '/',
      routes: {
        SplashScreen.name: (_) => SplashScreen(),
        OnBoardingScreen.name: (_)=> OnBoardingScreen(),
        SkeletonScreen.name:(_)=>SkeletonScreen(),
        LoginScreen.name:(_)=>LoginScreen(),
      },
    );
  }
}
