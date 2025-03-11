import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Button")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("ElevatedButton ditekan!")),
                );
              },
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("TextButton ditekan!")),
                );
              },
              child: const Text("Text Button"),
            ),
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("IconButton ditekan!")),
                );
              },
              icon: const Icon(Icons.thumb_up),
            ),
          ],
        ),
      ),
    );
  }
}
