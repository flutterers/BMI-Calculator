import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF1D1F33),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D1F33),
        ),
      ),
      home: const InputPage(),
    );
  }
}
