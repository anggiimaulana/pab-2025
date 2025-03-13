import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Animated Container")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: _isExpanded ? 200 : 100,
              height: _isExpanded ? 200 : 100,
              decoration: BoxDecoration(
                color: _isExpanded ? Colors.blueAccent : Colors.red,
                borderRadius: BorderRadius.circular(_isExpanded ? 50 : 10),
              ),
              child: const Center(
                child: Text(
                  "Hasilnya bro!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: const Text("Klik Broo!!"),
            ),
          ],
        ),
      ),
    );
  }
}
