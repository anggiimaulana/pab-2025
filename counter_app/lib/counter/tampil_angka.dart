import 'package:flutter/material.dart';

class TampilAngka extends StatelessWidget {
  final String nilai;
  const TampilAngka({super.key, required this.nilai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tampil Angka")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Angka Terakhir"),
            Text(nilai, style: TextStyle(fontSize: 30, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
