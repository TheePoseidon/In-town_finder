import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const CityFinderApp());
}

class CityFinderApp extends StatelessWidget {
  const CityFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kigali City Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF20A850),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
