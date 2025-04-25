import 'package:counter_app/counter/tampil_angka.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  nilai.toString(),
                  style: const TextStyle(fontSize: 30, color: Colors.red),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (nilai > 0) {
                            nilai--;
                          }
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nilai++;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TampilAngka(nilai: nilai.toString()),
                  ),
                );
              },
              child: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
