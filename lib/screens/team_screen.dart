import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/team_utils.dart';
import 'package:gdg_makaut/widgets/team_screen_widget/team_widget.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teamData.length,
      itemBuilder: (context, index) {
        String teamName = teamData.keys.elementAt(index);
        List<TeamDetail> teamList = teamData[teamName]!;
        return TeamWidget(teamList: teamList, teamName: teamName);
      },
    );
  }
}
