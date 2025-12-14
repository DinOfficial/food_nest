import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryServicesCardSelect extends StatelessWidget {
  const CategoryServicesCardSelect({super.key, required this.title, required this.img, required this.onTap});

  final String title;
  final String img;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width *.4,
        decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(height: 260, width: double.infinity, img, fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 40,
                width:  MediaQuery.of(context).size.width *.4,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
