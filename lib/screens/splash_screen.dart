import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Image.asset(
                  'images/splash.png',
                ),
              ),
              ElevatedButton.icon(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
