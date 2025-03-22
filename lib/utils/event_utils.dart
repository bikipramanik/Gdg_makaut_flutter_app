class EventDetails {
  final String eventImagePath;
  final String eventName;

  EventDetails({
    required this.eventImagePath,
    required this.eventName,
  });
}

List<EventDetails> dummyEvents = [
  ...List.generate(
    6,
    (index) {
      return EventDetails(
          eventImagePath: "lib/assets/event1.jpg", eventName: "EVENTTTS");
    },
  )
];

enum Event {
  upcomingEvents,
  ongoingEvents,
  pastEvents,
}
