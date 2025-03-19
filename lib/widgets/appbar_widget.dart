import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "lib/assets/GDG_logo_group.jpg",
            height: screenHeight * 0.1,
            width: screenWidth * 0.15,
          ),
          SizedBox(
            width: screenWidth * 0.01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Google Developer Groups",
                style: GoogleFonts.raleway(
                  fontSize: screenWidth * 0.032,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "On Campus MAKAUT, WB",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: screenWidth * 0.025),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
