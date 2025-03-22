import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_makaut/utils/home_util.dart';

class _QuoteStateNotifier extends StateNotifier<QuoteDetails> {
  _QuoteStateNotifier()
      : super(
          QuoteDetails(
            description: "Description",
            image: "lib/assets/quote.jpeg",
            name: "name",
            quote: "blah blah blah",
          ),
        );

  QuoteDetails quote() {
    return QuoteDetails(
      description: "jfdhafga",
      image: "lib/assets/quote.jpeg",
      name: "Arpan",
      quote: "Meow Meow Meow Meow",
    );
  }
}

final quoteProvider = StateNotifierProvider<_QuoteStateNotifier, QuoteDetails>(
  (ref) => _QuoteStateNotifier(),
);
