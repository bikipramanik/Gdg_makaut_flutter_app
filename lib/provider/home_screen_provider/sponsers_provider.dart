import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/utils/home_util.dart';

class _SponserStateNotifier extends StateNotifier<List<String>> {
  _SponserStateNotifier() : super([]);

  List<String> sponsers() {
    return sponsersList;
  }
}

final sopnserProvider =
    StateNotifierProvider<_SponserStateNotifier, List<String>>(
  (ref) => _SponserStateNotifier(),
);
