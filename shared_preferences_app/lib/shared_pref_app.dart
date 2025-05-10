import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefApp extends StatefulWidget {
  const SharedPrefApp({super.key});

  @override
  State<SharedPrefApp> createState() => _SharedPrefAppState();
}

class _SharedPrefAppState extends State<SharedPrefApp> {
  String text = "Nilai awal";

  Logger logger = Logger(printer: PrettyPrinter());
  TextEditingController textEditingController = TextEditingController();
  SharedPreferences? pref;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    logger.i("SharedPreferences: diinisialisasi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences")),
      body: Column(
        children: [
          Text(text),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(controller: textEditingController),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await pref!.setString('nilai', textEditingController.text);
                    setState(() {
                      textEditingController.clear();
                    });
                  },
                  child: Text("Save"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    String? dataNilai = pref!.getString("nilai");
                    debugPrint("Loaded value: $dataNilai");
                    setState(() {
                      text =
                          (dataNilai != null && dataNilai.isNotEmpty)
                              ? dataNilai
                              : "Nilai awal";
                      textEditingController.clear();
                    });
                  },
                  child: Text("Load"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await pref!.remove("nilai");
                    setState(() {
                      textEditingController.clear();
                    });
                  },
                  child: Text("Delete"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
