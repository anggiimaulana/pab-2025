import 'package:counter_app/counter/tampil_angka.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int nilai = 0;

  Logger logger = Logger(printer: PrettyPrinter());
  SharedPreferences? pref;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      nilai = pref?.getInt("nilai") ?? 0;
    });
    logger.i("SharedPreferences loaded, nilai = $nilai");
  }

  Future<void> _saveNilai() async {
    await pref?.setInt("nilai", nilai);
    logger.i("Nilai disimpan: $nilai");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  nilai.toString(),
                  style: const TextStyle(fontSize: 30, color: Colors.indigo),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        iconColor: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (nilai > 0) {
                            nilai--;
                            _saveNilai();
                          }
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        iconColor: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          nilai++;
                          _saveNilai();
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                iconColor: Colors.white,
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TampilAngka()),
                );
                await pref!.setInt("nilai", nilai);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
