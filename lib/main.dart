import 'package:flutter/material.dart';
import 'input_page.dart';

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
      /*theme: ThemeData(
        // primaryColor: const Color.fromARGB(255, 10, 13, 34),
        primaryColor: Color(0xFF1D1F33),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        */ /*textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),*/ /*
        */ /*colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange, brightness: Brightness.dark)
        */ /*
        */ /*colorScheme: const ColorScheme(
          background: Colors.white,
          brightness: Brightness.light,
          primary: Color(0xFF1D1F33),
          // primary: Colors.purpleAccent,
          onPrimary: Colors.white,
          secondary: Color(0xFFEB1555),
          onSecondary: Colors.white,
          error: Colors.deepPurple,
          onError: Colors.blueGrey,
          onBackground: Colors.cyan,
          surface: Colors.purpleAccent,
          onSurface: Colors.yellowAccent,
          primaryContainer: Colors.orange,
          secondaryContainer: Colors.purpleAccent,
        ),*/ /*
        // canvasColor: const Color(0xFF090C20),
      ),*/
      home: const InputPage(),
    );
  }
}
