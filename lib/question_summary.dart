import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.rowdies(
                              color: const Color.fromARGB(162, 15, 49, 0)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String,
                            style: GoogleFonts.concertOne(
                                color: const Color.fromARGB(255, 255, 61, 61)),
                            textAlign: TextAlign.left),
                        Text(data['correct_answer'] as String,
                            style: GoogleFonts.concertOne(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.left),
                    const SizedBox(
                      height: 5,)
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
