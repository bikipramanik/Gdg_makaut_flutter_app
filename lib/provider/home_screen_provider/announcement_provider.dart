import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/utils/home_util.dart';

class _AnnouncementStateNotifier extends StateNotifier<List<String>> {
  _AnnouncementStateNotifier() : super([]);
  List<String> announments() {
    return announcementsList;
  }
}

final announcementProvider =
    StateNotifierProvider<_AnnouncementStateNotifier, List<String>>(
  (ref) => _AnnouncementStateNotifier(),
);
