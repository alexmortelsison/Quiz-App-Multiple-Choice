import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.maxScore,
    required this.scoreKeeper,
  });

  final double maxScore;
  final ValueNotifier<double> scoreKeeper;

  @override
  Widget build(BuildContext context) {
    return SimpleCircularProgressBar(
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
    );
  }
}
