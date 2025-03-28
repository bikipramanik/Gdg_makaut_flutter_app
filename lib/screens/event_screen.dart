import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/provider/event_screen_provider/event_provider.dart';
import 'package:gdg_makaut/utils/event_utils.dart';
import 'package:gdg_makaut/widgets/event_screen_widget/event_scroll_widget.dart';

class EventScreen extends ConsumerStatefulWidget {
  const EventScreen({super.key});

  @override
  ConsumerState<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends ConsumerState<EventScreen> {
  @override
  Widget build(BuildContext context) {
    List<EventDetails> upcomingEvents =
        ref.watch(eventProvider.notifier).upcomingEvents();
    List<EventDetails> ongoingEvents =
        ref.watch(eventProvider.notifier).ongoingEvents();
    List<EventDetails> pastEvents =
        ref.watch(eventProvider.notifier).pastEvents();
    return ListView(
      children: [
        EventScrollWidget(
          eventList: upcomingEvents,
          eventName: Event.upcomingEvents,
        ),
        EventScrollWidget(
          eventList: ongoingEvents,
          eventName: Event.ongoingEvents,
        ),
        EventScrollWidget(
          eventList: pastEvents,
          eventName: Event.pastEvents,
        ),
      ],
    );
  }
}
