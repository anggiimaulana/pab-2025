import 'package:flutter/material.dart';
import 'package:tourism/screen/bookmark/bookmark_screen.dart';
import 'package:tourism/screen/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indexBottomNavBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switch (_indexBottomNavBar) {
        0 => const HomeScreen(),
        _ => const BookmarkScreen(),
      },
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexBottomNavBar, // <== tambahkan ini
        backgroundColor: Colors.blue,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade400),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        onTap: (index) {
          setState(() {
            _indexBottomNavBar = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmarks",
            tooltip: "Bookmarks",
          ),
        ],
      ),
    );
  }
}
