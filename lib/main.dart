import 'package:flutter/material.dart';
import 'package:l3a2kart/Pages/TestPage.dart';

import 'Theme/ThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeHelper.getTheme(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: TestPage(),
    );
  }
}
