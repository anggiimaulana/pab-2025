import 'package:flutter/material.dart';

class MyIndicatorProgress extends StatelessWidget {
  const MyIndicatorProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Progress Indicator Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(20),
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 20),
            MyIndikatorLisview(),
            SizedBox(height: 20),
            MyIndikatorCustom(),
            SizedBox(height: 20),
            MyProgressBarSlider(),
          ],
        ),
      ),
    );
  }
}

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
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            shrinkWrap: true,
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
          onPressed: isLoading ? null : _loadMore,
          child: const Text("Muat lebih banyak!"),
        ),
      ],
    );
  }
}

class MyIndikatorCustom extends StatefulWidget {
  const MyIndikatorCustom({super.key});

  @override
  State<MyIndikatorCustom> createState() => _MyIndikatorCustomState();
}

class _MyIndikatorCustomState extends State<MyIndikatorCustom> {
  double progress = 0.43;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 8,
                backgroundColor: Colors.blueGrey,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              progress += 0.1;
              if (progress > 1) progress = 0;
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}

class MyProgressBarSlider extends StatefulWidget {
  const MyProgressBarSlider({super.key});

  @override
  State<MyProgressBarSlider> createState() => _MyProgressBarSliderState();
}

class _MyProgressBarSliderState extends State<MyProgressBarSlider> {
  double progressValue = 0.3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: LinearProgressIndicator(value: progressValue),
        ),
        Slider(
          value: progressValue,
          min: 0,
          max: 1,
          divisions: 10,
          label: "${(progressValue * 100).toInt()}%",
          onChanged: (value) {
            setState(() {
              progressValue = value;
            });
          },
        ),
      ],
    );
  }
}
