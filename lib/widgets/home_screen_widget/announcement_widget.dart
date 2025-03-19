import 'package:flutter/material.dart';

class AnnouncementWidget extends StatefulWidget {
  const AnnouncementWidget({super.key});

  @override
  State<AnnouncementWidget> createState() => _AnnouncementWidgetState();
}

class _AnnouncementWidgetState extends State<AnnouncementWidget> {
  List<String> announcements = ["HAHA", "HEHE", "KAKA", "MAMA", "BAL"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color.fromARGB(51, 242, 170, 255),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Event"),
              trailing: Icon(Icons.check_box),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Event"),
              trailing: Icon(Icons.check_box),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Event"),
              trailing: Icon(Icons.check_box),
            ),
          ],
        ),
      ),
    );
  }
}
