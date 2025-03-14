import 'package:flutter/material.dart';

class MyAnimationTransition extends StatelessWidget {
  const MyAnimationTransition({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animasi dan Transisi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyDetailScreen(),
                  ),
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
          const SizedBox(height: 20),
          const MyFadeTransition(),
          const SizedBox(height: 20),
          const MyAnimatedContainer(),
        ],
      ),
    );
  }
}

class MyFadeTransition extends StatefulWidget {
  const MyFadeTransition({super.key});

  @override
  State<MyFadeTransition> createState() => _MyFadeTransitionState();
}

class _MyFadeTransitionState extends State<MyFadeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: const Text(
          "Fade In-Out",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _isExpanded ? 200 : 100,
          height: _isExpanded ? 200 : 100,
          decoration: BoxDecoration(
            color: _isExpanded ? Colors.blueAccent : Colors.red,
            borderRadius: BorderRadius.circular(_isExpanded ? 50 : 10),
          ),
          alignment: Alignment.center,
          child: const Text(
            "Hasilnya bro!",
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Klik Broo!!"),
        ),
      ],
    );
  }
}

class MyDetailScreen extends StatelessWidget {
  const MyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen")),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://cdn.idntimes.com/content-images/community/",
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
