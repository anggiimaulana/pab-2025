import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TampilAngka extends StatefulWidget {
  const TampilAngka({super.key});

  @override
  State<TampilAngka> createState() => _TampilAngkaState();
}

class _TampilAngkaState extends State<TampilAngka> {
  int nilai = 0;

  @override
  void initState() {
    super.initState();
    _loadNilai();
  }

  Future<void> _loadNilai() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      nilai = pref.getInt("nilai") ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Tampil Angka",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Angka Terakhir"),
            Text(
              nilai.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}
