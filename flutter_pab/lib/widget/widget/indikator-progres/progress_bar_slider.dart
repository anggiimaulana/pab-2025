import 'package:flutter/material.dart';

class MyProgressBarSlider extends StatefulWidget {
  const MyProgressBarSlider({super.key});

  @override
  State<MyProgressBarSlider> createState() => _MyProgressBarSliderState();
}

class _MyProgressBarSliderState extends State<MyProgressBarSlider> {
  double progressValue = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Progress Bar Slider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
