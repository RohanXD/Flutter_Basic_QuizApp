import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(162, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Welcome to Quiz',
            style: GoogleFonts.anton(
                color: const Color.fromARGB(255, 11, 57, 13),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 32,
          ),
          OutlinedButton.icon(
            onPressed: startquiz,
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.black54,
                foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt, size: 40),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.seymourOne(
                  color: const Color.fromARGB(200, 143, 255, 143),
                  fontSize:20,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
