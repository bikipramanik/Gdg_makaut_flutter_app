import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/event_utils.dart';

class EventCardWidget extends StatelessWidget {
  const EventCardWidget({
    super.key,
    required this.eventList,
    required this.eventName,
    required this.index,
  });

  final List<EventDetails> eventList;
  final Event eventName;
  final int index;

  @override
  Widget build(BuildContext context) {
    String buttonName;

    if (eventName == Event.ongoingEvents) {
      buttonName = "Join Us";
    } else if (eventName == Event.upcomingEvents) {
      buttonName = "Register";
    } else {
      buttonName = "Get Info";
    }
    return Container(
      // height: MediaQuery.of(context).size.height * 0.25,
      width: 180,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              eventList[index].eventImagePath,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 14,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                backgroundColor: Colors.white,
                fixedSize: Size(double.infinity, 2),
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.white),
                // minimumSize: Size(120, 40), // Fix height issue
                textStyle: TextStyle(fontSize: 12),
              ),
              child: Text(buttonName),
            ),
          ),
        ],
      ),
    );
  }
}
