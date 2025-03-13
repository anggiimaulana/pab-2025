import 'package:flutter/material.dart';
import 'package:flutter_pab/widget/widget/animasi-transisi/animated_container.dart';
import 'package:flutter_pab/widget/widget/animasi-transisi/fade_transition.dart';
import 'package:flutter_pab/widget/widget/animasi-transisi/hero_animation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomeScreen(),
    );
  }
}

// menu utama
class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animasi & Transisi")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyAnimatedContainer(),
                  ),
                );
              },
              child: const Text("AnimatedContainer"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHeroAnimation(),
                  ),
                );
              },
              child: const Text("Hero Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyFadeTransition(),
                  ),
                );
              },
              child: const Text("Fade Tansition"),
            ),
          ],
        ),
      ),
    );
  }
}
