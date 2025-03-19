import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/team_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselSlideWidget extends StatelessWidget {
  const CarouselSlideWidget({super.key, required this.teamList});

  final List<TeamDetail> teamList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 350,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        enableInfiniteScroll: false,
      ),
      itemCount: teamList.length,
      itemBuilder: (context, index, realIndex) {
        final memeber = teamList[index];
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 250,
              width: 200,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "lib/assets/test_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 22,
              child: Text(
                memeber.memberName,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
