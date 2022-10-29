import 'package:flutter/material.dart';
import 'package:weatherapp/core/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('Weather App'),),
        body: Column(),
      ),
    );
  }
}
