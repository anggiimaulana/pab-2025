import 'package:flutter/material.dart';
import 'package:flutter_pab/widget/widget/animasi-transisi/fade_transition.dart';

// navigator
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyFadeTransition());
  }
}
