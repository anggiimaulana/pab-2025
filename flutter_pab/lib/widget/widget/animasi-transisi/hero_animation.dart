import 'package:flutter/material.dart';

class MyHeroAnimation extends StatelessWidget {
  const MyHeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Animation")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyDetailScreen()),
            );
          },
          child: Hero(
            tag: 'hero-image',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://cdn.idntimes.com/content-images/community/2021/05/157555113-907932536644501-8109171852551088991-n-1t-bd32a69ed5e805c7ecf69315ad83ded2-efcd76656db240f78629a45edbd14aab.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyDetailScreen extends StatelessWidget {
  const MyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen Hero Animation")),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: Image.network(
            "https://cdn.idntimes.com/content-images/community/2021/05/157555113-907932536644501-8109171852551088991-n-1t-bd32a69ed5e805c7ecf69315ad83ded2-efcd76656db240f78629a45edbd14aab.jpg",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
