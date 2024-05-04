import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);

List<MaterialColor> backgroundColor = [
  Colors.blue,
  Colors.green,
];

final Image image = Image.asset(
  'images/splash.png',
);

final questionTextStyle = GoogleFonts.lato(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

const answerTextStyle = TextStyle(
  color: Color.fromARGB(255, 4, 92, 85),
  fontWeight: FontWeight.bold,
  fontSize: 15,
);
