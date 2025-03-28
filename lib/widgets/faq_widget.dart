import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/faq_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key, required this.query});

  final String query;

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  Map<int, bool> expandedMap = {};
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredFaqs = faqs
        .where((faq) =>
            faq["question"]!.toLowerCase().contains(widget.query.toLowerCase()))
        .toList();

    return Expanded(
      child: ListView.builder(
          itemCount: filteredFaqs.length,
          itemBuilder: (context, index) {
            final faq = filteredFaqs[index];
            bool isOpen = expandedMap[index] ?? false;

            return Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () => setState(() {
                      expandedMap[index] = !isOpen;
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              faq["question"] ?? "No Questions available",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  textStyle: const TextStyle(fontSize: 17)),
                              maxLines: null,
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        Icon(isOpen
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: isOpen,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 166, 227, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        faq["answer"] ?? "No Answer Available",
                        style: GoogleFonts.lato(fontSize: 16),
                        maxLines: null,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
