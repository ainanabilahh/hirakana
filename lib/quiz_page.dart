import 'package:flutter/material.dart';
import 'package:hirakana/home_page.dart';
import 'package:hirakana/question_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var activeScreen = 'home-page';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hirakana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: activeScreen == 'home-page'
          ? HomePage(switchScreen)
          : const QuestionPage(),
    );
  }
}
