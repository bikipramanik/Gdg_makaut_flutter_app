import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/utils/home_util.dart';

class _CommunityPartnerStateNotifier extends StateNotifier<List<String>> {
  _CommunityPartnerStateNotifier() : super([]);

  List<String> communityPartners() {
    return communityPartnerList;
  }
}

final communityParntersProvider =
    StateNotifierProvider<_CommunityPartnerStateNotifier, List<String>>(
  (ref) => _CommunityPartnerStateNotifier(),
);
