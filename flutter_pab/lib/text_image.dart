import 'package:flutter/material.dart';

class MyTextImages extends StatelessWidget {
  const MyTextImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text & Image",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello, Flutter!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: RichText(
              text: TextSpan(
                text: "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        " merupakan framework untuk membangun aplikasi mobile dan web dari satu kode",
                    style: TextStyle(fontSize: 16, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ),
          Image.asset("assets/images/figma.jpg", width: 200, height: 200),
          Image.network(
            "https://cdn.idntimes.com/content-images/community/2021/05/157555113-907932536644501-8109171852551088991-n-1t-bd32a69ed5e805c7ecf69315ad83ded2-efcd76656db240f78629a45edbd14aab.jpg",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
