import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int total;
  final VoidCallback resetquiz;

  const Result({
    required this.score,
    required this.total,
    super.key,
    required this.resetquiz,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it! Your score is $score out of $total.',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: resetquiz, child: const Text('Restart Quiz')),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
