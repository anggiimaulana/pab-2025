import 'package:flutter/material.dart';
import 'package:flutter_pab/animation_transisi.dart';
import 'package:flutter_pab/container.dart';
import 'package:flutter_pab/gesture.dart';
import 'package:flutter_pab/indicator_progress.dart';
import 'package:flutter_pab/navigasi.dart';
import 'package:flutter_pab/text_image.dart';
import 'package:flutter_pab/input.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    MyContainer(),
    MyNavigasi(),
    MyTextImages(),
    MyInput(),
    MyGesture(),
    MyIndicatorProgress(),
    MyAnimationTransition(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_open_rounded),label: 'Container'),
          BottomNavigationBarItem(icon: Icon(Icons.navigation), label: 'Navigasi'),
          BottomNavigationBarItem(icon: Icon(Icons.text_decrease_rounded),label: 'Text & Gambar',),
          BottomNavigationBarItem(icon: Icon(Icons.input), label: 'Input'),
          BottomNavigationBarItem(icon: Icon(Icons.gesture), label: 'Gesture'),
          BottomNavigationBarItem(icon: Icon(Icons.drag_indicator_outlined), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.animation), label: 'Animasi'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        unselectedItemColor: Colors.blueGrey,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        onTap: _onItemTapped,
      ),
    );
  }
}
