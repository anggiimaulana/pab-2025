import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  const MyInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Input", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
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
            const MyForm(),
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

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Form tidak boleh kosong!';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text("Form valid!")));
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
