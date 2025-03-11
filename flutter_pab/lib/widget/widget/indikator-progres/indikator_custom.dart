import 'package:flutter/material.dart';

class MyIndikatorCustom extends StatefulWidget {
  const MyIndikatorCustom({super.key});

  @override
  State<MyIndikatorCustom> createState() => _MyIndikatorCustomState();
}

class _MyIndikatorCustomState extends State<MyIndikatorCustom> {
  double progress = 0.43;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Indikator Custom")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 8,
                backgroundColor: Colors.blueGrey,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            progress += 0.1;
            if (progress > 1) progress = 0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
