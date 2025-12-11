import 'package:flutter/material.dart';
import 'package:food_nest/ui/screens/category_services_screen.dart';
import 'package:food_nest/ui/widgets/sub_heading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/heading_text.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  static String name = 'otp-verify';

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  bool _onComplete = false;

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
              HeadingText(title: 'Verify OTP !'),
              const SizedBox(height: 8),
              SubHeading(title: 'Enter the OTP sent +966544436839'),
              const SizedBox(height: 80),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeFillColor: Colors.white10,
                  activeColor: Colors.white10,
                  inactiveColor: Colors.white10,
                  inactiveFillColor: Colors.white10,
                ),
                keyboardType: TextInputType.number,
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {
                  setState(() {
                    if (v.isNotEmpty) {
                      _onComplete = true;
                    }
                  });
                },
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend OTP',
                  style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                ),
              ),
              const SizedBox(height: 160),
              Visibility(
                visible: _onComplete,
                replacement: Text(''),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CategoryServicesScreen.name);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
