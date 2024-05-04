import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onTap;
  const StartButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: const Icon(
        Icons.arrow_forward_ios,
        color: startButtonIconColor,
      ),
      label: const Text(
        'Start',
        style: startButtonTextStyle,
      ),
    );
  }
}
