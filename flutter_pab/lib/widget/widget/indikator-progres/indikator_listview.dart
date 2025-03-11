import 'package:flutter/material.dart';

class MyIndikatorLisview extends StatefulWidget {
  const MyIndikatorLisview({super.key});

  @override
  State<MyIndikatorLisview> createState() => _MyIndikatorLisviewState();
}

class _MyIndikatorLisviewState extends State<MyIndikatorLisview> {
  bool isLoading = false;
  List<String> items = ["Item 1", "Item 2", "Item 3"];

  void _loadMore() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      items.addAll(["Item ${items.length + 1}", "Item ${items.length + 2}"]);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview + Loading")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length + (isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == items.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return ListTile(title: Text(items[index]));
              },
            ),
          ),
          ElevatedButton(
            onPressed: _loadMore,
            child: const Text("Muat lebih banyak!"),
          ),
        ],
      ),
    );
  }
}
