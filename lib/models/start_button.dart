import 'package:flutter/material.dart';

import '../screens/quiz_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const QuizScreen();
            },
          ),
        );
      },
      icon: const Icon(
        Icons.arrow_forward_ios,
        color: Color.fromARGB(255, 4, 92, 85),
      ),
      label: const Text(
        'Start',
        style: TextStyle(
          color: Color.fromARGB(255, 4, 92, 85),
        ),
      ),
    );
  }
}
