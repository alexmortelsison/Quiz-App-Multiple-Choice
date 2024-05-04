import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentIndex = 0;
  late ValueNotifier<double> scoreKeeper;
  late double maxScore;
  late int finalScore;

  @override
  void initState() {
    super.initState();
    maxScore = questions.length.toDouble();
    scoreKeeper = ValueNotifier<double>(0);
    finalScore = 0;
  }

  @override
  void dispose() {
    super.dispose();
    scoreKeeper.dispose();
  }

  void getNextQuestion() {
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex += 1;
      }
    });
  }

  void checkAnswer(String selectedAnswer) {
    String correctAnswer = questions[currentIndex]['correctAnswer'];
    if (selectedAnswer == correctAnswer) {
      scoreKeeper.value++;
      finalScore++;
    } else {}
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SimpleCircularProgressBar(
                maxValue: maxScore,
                valueNotifier: scoreKeeper,
                mergeMode: true,
                onGetText: (double value) {
                  TextStyle centerTextStyle = TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent.withOpacity(value * 0.1),
                  );

                  return Text(
                    '${value.toInt() * 10}%',
                    style: centerTextStyle,
                  );
                },
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                questions[currentIndex]['question'],
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var answer in questions[currentIndex]['answers'])
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 40,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          checkAnswer(answer);
                          getNextQuestion();
                        },
                        child: Text(
                          answer,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 4, 92, 85),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Your Final Score is:',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$finalScore',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 6, 66, 116),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
