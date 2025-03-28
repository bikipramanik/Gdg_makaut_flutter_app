import 'package:flutter/material.dart';
import 'package:gdg_makaut/utils/faq_utils.dart';
import 'package:gdg_makaut/widgets/faq_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQScreen extends StatefulWidget {
  FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  String query = "";

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredFaqs = faqs
        .where((faq) =>
            faq["question"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "FREQUENTLY ASKED QUESTIONS",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Here are the answers to some most frequently asked questions",
                style: GoogleFonts.lato(fontSize: 14),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search using keywords",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                query = value;
              },
            ),
            SizedBox(height: 10),
            FaqWidget(query: query),
            // Expanded(
            //   child: ListView(
            //     children: faqs.map(
            //       (faq) {
            //         return ExpansionTile(
            //           title: Container(
            //               decoration: BoxDecoration(
            //                 color: const Color.fromARGB(255, 250, 232, 243),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Text(faq["question"]!)),
            //           children: [
            //             Text(faq["answer"]!),
            //           ],
            //         );
            //       },
            //     ).toList(),
            //   ),
            // ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white24),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10,
                  children: [
                    Text(
                      "Still Stuck? Help us a mail away",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width * 0.9, 30),
                        // textStyle: GoogleFonts.lato(color: Colors.white),
                      ),
                      child: Text(
                        "Submit your question",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
