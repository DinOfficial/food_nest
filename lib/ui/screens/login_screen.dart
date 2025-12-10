import 'package:flutter/material.dart';
import 'package:food_nest/ui/widgets/sub_heading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/heading_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String name = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              HeadingText(title: 'Welcome Back !'),
              const SizedBox(height: 8),
              SubHeading(title: 'Please login your account'),
              const SizedBox(height: 80),
              TextFormField(decoration: InputDecoration(hintText: 'Write you email')),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: !_isShowPassword,
                decoration: InputDecoration(
                  hintText: 'Write you password',
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
                width: MediaQuery.of(context).size.width * .7,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Image.asset('assets/images/g_logo.png', width: 20, height: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Login with Google',
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
                    'Don\'t have an account?',
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
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
