import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_makaut/widgets/home_screen_widget/community_partners_widget.dart';
import 'package:gdg_makaut/widgets/home_screen_widget/join_gdg_widget.dart';
import 'package:gdg_makaut/widgets/home_screen_widget/quote_widget.dart';
import 'package:gdg_makaut/widgets/home_screen_widget/sponser_curosoul.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gdg_makaut/widgets/home_screen_widget/announcement_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: screenHeight * 0.075,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromARGB(140, 158, 158, 158),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "Welcome to GDGoC MAKAUT, WB!",
            style: GoogleFonts.lato(
              fontSize: screenHeight * 0.02,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Maulana Abul Kalam Azad University of Technology, WB",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: screenHeight * 0.016, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                "lib/assets/makaut_image.jpg",
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 7)),
        Text(
          " Dive into a community of innovators, coders, and visionaries. Together, we learn, build, and grow to shape the future of technology. Let’s turn ideas into impactful solutions. 🚀 ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: screenHeight * 0.015,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "ANNOUNCEMENTS",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        AnnouncementWidget(),
        SizedBox(height: 8),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.26,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "SPONSERS",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SponserCurosoul(),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.19,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "COMMUNITY PARTNERS",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        CommunityPartnersWidget(),
        SizedBox(height: 15),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.19,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "TESTIMONIALS",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        QuoteWidget(),
        SizedBox(height: 15),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.19,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "JOIN GDGoC MAKAUT",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        JoinGdgWidget(),
        SizedBox(height: 25),
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.whatsapp),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.youtube),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.xTwitter),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {},
            ),
          ],
        ),
        Center(
          child: Text(
            "Google Developer Groups",
            style: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
