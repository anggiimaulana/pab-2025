import 'package:flutter/material.dart';
import 'package:flutter_pab/widget/widget/bottom_navigator.dart';
import 'package:flutter_pab/widget/widget/button.dart';
import 'package:flutter_pab/widget/widget/drawer.dart';
import 'package:flutter_pab/widget/widget/form.dart';
import 'package:flutter_pab/widget/widget/navigator.dart';
import 'package:flutter_pab/widget/widget/text_field.dart';

// navigator
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyButton());
  }
}
