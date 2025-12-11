import 'package:flutter/material.dart';
import 'package:food_nest/ui/screens/login_screen.dart';
import 'package:food_nest/ui/screens/otp_verify_screen.dart';
import 'package:food_nest/ui/widgets/sub_heading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/heading_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String name = 'sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              const SizedBox(height: 100),
              HeadingText(title: 'Create a new account !'),
              const SizedBox(height: 8),
              SubHeading(title: 'Please fill in the form to continue'),
              const SizedBox(height: 80),
              TextFormField(decoration: InputDecoration(hintText: 'Full name')),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'Phone number'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: !_isShowPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isShowPassword = !_isShowPassword;
                      });
                    },
                    icon: Icon(_isShowPassword ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(height: 160),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OtpVerifyScreen.name);
                  },
                  child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {

                },
                child: Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Image.asset('assets/images/g_logo.png', width: 20, height: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Sign up with Google',
                      style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  Text(
                    'Have an account?',
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.name);
                    },
                    child: Text(
                      'Log In',
                      style: GoogleFonts.lato(fontSize: 14, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
