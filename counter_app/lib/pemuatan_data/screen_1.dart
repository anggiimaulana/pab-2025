import 'package:counter_app/pemuatan_data/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 1")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => Screen2(data: "Halo, ini pesan dari Screen 1"),
              ),
            );
          },
          child: Text("Kirim pesan ke Screen 2"),
        ),
      ),
    );
  }
}
