import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  static const questions = [
    {
      'questionText': "What is Your Name?",
      'answers': ['Alice', 'Bob', 'Charlie'],
    },
    {
      'questionText': "What is your favorite animal?",
      'answers': ['Dog', 'Cat', 'Rabbit'],
    },
  ];

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Result(
                score: questionIndex,
                total: questions.length,
                resetquiz: resetQuiz,
              ),
      ),
    );
  }
}
