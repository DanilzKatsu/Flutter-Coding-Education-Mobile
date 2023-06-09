import 'package:coding_education_mobile/views/contains/style.dart';
import 'package:flutter/material.dart';

import 'views/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: 'Glitch0',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 34, fontWeight: FontWeight.w500, color: kWhiteColor),
          headlineLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: kWhiteColor),
          headlineMedium: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: kWhiteColor),
          headlineSmall: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
          titleLarge: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: kWhiteColor),
          titleMedium: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: kWhiteColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
