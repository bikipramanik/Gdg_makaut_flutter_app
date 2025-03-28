import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/utils/event_utils.dart';

class _EventStateNotifier extends StateNotifier<List<EventDetails>> {
  _EventStateNotifier() : super([]);

  List<EventDetails> upcomingEvents() {
    return dummyEvents;
  }

  List<EventDetails> ongoingEvents() {
    return dummyEvents;
  }

  List<EventDetails> pastEvents() {
    return dummyEvents;
  }
}

final eventProvider =
    StateNotifierProvider<_EventStateNotifier, List<EventDetails>>(
  (ref) => _EventStateNotifier(),
);
