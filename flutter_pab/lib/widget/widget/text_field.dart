import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Text Field")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan nama lengkap',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String text = textController.text;
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Haii, $text")));
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
