import 'package:flutter/material.dart';
import 'package:shared_preferences_app/shared_pref_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SharedPrefApp(),
    );
  }
}
