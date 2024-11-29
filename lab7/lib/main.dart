import 'package:flutter/material.dart';
import 'v1.dart'; // Імпортуємо файл з віджетом

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGB Picker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ColorPickerPage(), // Використовуємо створений у v1.dart віджет
    );
  }
}