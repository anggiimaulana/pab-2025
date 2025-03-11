import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Network Image")),
      body: Center(
        child: Image.network(
          "https://cdn.idntimes.com/content-images/community/2021/05/157555113-907932536644501-8109171852551088991-n-1t-bd32a69ed5e805c7ecf69315ad83ded2-efcd76656db240f78629a45edbd14aab.jpg",
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
