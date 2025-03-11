import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Rich Text")),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Flutter",
            style: TextStyle(fontSize: 24, color: Colors.black38),
            children: <TextSpan>[
              TextSpan(
                text:
                    "Flutter merupakan framework untuk membangun aplikasi mobile dan web dari satu kode",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
