import 'package:flutter/material.dart';
import 'package:hirakana/question_page.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 235, 234),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/home.jpg',
              scale: 5,
            ),
            const SizedBox(height: 40),
            const Text(
              "Hiragana & Katakana Quiz",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red, // foreground
              ),
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right),
              label: const Text('Let\'s Start!'),
            )
          ],
        ),
      ),
    );
  }
}
