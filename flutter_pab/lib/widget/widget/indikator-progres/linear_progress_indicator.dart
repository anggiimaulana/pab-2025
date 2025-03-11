import 'package:flutter/material.dart';

class MyLinearProgressIndicator extends StatelessWidget {
  const MyLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Linear Progress Indicator")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
