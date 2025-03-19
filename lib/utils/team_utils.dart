class TeamDetail {
  TeamDetail({
    required this.image,
    required this.memberName,
  });
  final String memberName;
  final String image;
}

List<TeamDetail> facultyAdvisorList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "JOY SAMADDER"),
];
List<TeamDetail> organizerList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "ARPAN GHOSH"),
];
List<TeamDetail> mentorList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "NIRVIK GHOSH"),
];
List<TeamDetail> coOrganizerList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "SUJOY MODAK"),
];
List<TeamDetail> appDevTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Shuvrajit Adhikary"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Biki Pramanik"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member 4"),
];
List<TeamDetail> webDevTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Srijon Chowdhury"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(web) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(web) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(web) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(web) 4"),
];
List<TeamDetail> managmentTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Debanjan Ghosh"),
  TeamDetail(
      image: "lib/assets/quote.jpeg", memberName: "member(management) 1"),
  TeamDetail(
      image: "lib/assets/quote.jpeg", memberName: "member(management) 2"),
  TeamDetail(
      image: "lib/assets/quote.jpeg", memberName: "member(management) 3"),
  TeamDetail(
      image: "lib/assets/quote.jpeg", memberName: "member(management) 4"),
];
List<TeamDetail> prTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Anupam Yadav"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(PR) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(PR) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(PR) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(PR) 4"),
];
List<TeamDetail> cloudTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Sukalyan Roy"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(cloud) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(cloud) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(cloud) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(cloud) 4"),
];
List<TeamDetail> cyberSecurityTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Hrisikesh Pal"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Cs) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Cs) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Cs) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Cs) 4"),
];
List<TeamDetail> aiMlTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "Somenath Goswami"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Ai) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Ai) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Ai) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(Ai) 4"),
];
List<TeamDetail> designTeamList = [
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "DONNO DONNO"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(design) 1"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(design) 2"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(design) 3"),
  TeamDetail(image: "lib/assets/quote.jpeg", memberName: "member(design) 4"),
];
Map<String, List<TeamDetail>> teamData = {
  "Faculty Advisor": facultyAdvisorList,
  "Organizer": organizerList,
  "Mentor": mentorList,
  "Co-Organizers": coOrganizerList,
  "APP DEVELOPMENT TEAM": appDevTeamList,
  "WEB DEVELOPMENT TEAM": webDevTeamList,
  "MANAGEMENT TEAM ": managmentTeamList,
  "PR TEAM": prTeamList,
  "CLOUD TEAM": cloudTeamList,
  "CYBER SECURITY TEAM": cyberSecurityTeamList,
  "AI/ML TEAM": aiMlTeamList,
  "DESIGN TEAM": designTeamList,
};
