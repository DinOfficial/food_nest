import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}