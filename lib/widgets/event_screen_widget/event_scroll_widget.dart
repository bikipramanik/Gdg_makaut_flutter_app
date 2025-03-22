import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/event_utils.dart';
import 'package:gdg_makaut/widgets/event_screen_widget/event_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class EventScrollWidget extends StatelessWidget {
  const EventScrollWidget({
    super.key,
    required this.eventList,
    required this.eventName,
  });

  final List<EventDetails> eventList;
  final Event eventName;

  @override
  Widget build(BuildContext context) {
    String event;
    if (eventName == Event.ongoingEvents) {
      event = "ONGOING EVENTS";
    } else if (eventName == Event.upcomingEvents) {
      event = "UPCOMING EVENTS";
    } else {
      event = "PAST EVENTS";
    }

    return Column(
      children: [
        Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 158, 158, 158),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " $event",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    textStyle: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text("See All >"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eventList.length,
            itemBuilder: (context, index) {
              return EventCardWidget(
                eventList: eventList,
                eventName: eventName,
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
