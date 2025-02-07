import 'package:app/screens/landing_scren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const JobApp());
}

class JobApp extends StatelessWidget {
  const JobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4169E1),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const LandingScreen(),
    );
  }
}
