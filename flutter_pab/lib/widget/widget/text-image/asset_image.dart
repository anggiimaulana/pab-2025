import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {
  const MyAssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Asset Image")),
      body: Center(
        child: Image.asset("assets/images/figma.jpg", width: 200, height: 200),
      ),
    );
  }
}
