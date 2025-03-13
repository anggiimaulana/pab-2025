import 'package:flutter/material.dart';
import 'package:project_uts/view/screen/surat_keterangan_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppMainScreen(),
    );
  }
}
