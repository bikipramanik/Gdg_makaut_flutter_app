import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/team_utils.dart';
import 'package:gdg_makaut/widgets/team_screen_widget/carousel_slide_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamWidget extends StatelessWidget {
  const TeamWidget({
    super.key,
    required this.teamList,
    required this.teamName,
  });
  final List<TeamDetail> teamList;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              teamName,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        CarouselSlideWidget(teamList: teamList),
      ],
    );
  }
}
