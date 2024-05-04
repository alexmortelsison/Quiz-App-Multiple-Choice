import 'package:flutter/material.dart';
import 'package:quiz_app/utils/const.dart';
import 'package:quiz_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
