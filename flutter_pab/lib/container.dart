import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ini judul project container",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.blueAccent, width: 75, height: 75),
                Container(color: Colors.green, width: 75, height: 75),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(color: Colors.red, width: 75, height: 75)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.amber, width: 75, height: 75),
                Container(color: Colors.blueGrey, width: 75, height: 75),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
