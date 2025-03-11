// routes
import 'package:flutter/material.dart';
import 'package:flutter_pab/widget/widget/navigasi/navigator.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MyHome(),
      'kedua': (context) => const SecondPage()
    },
  ));
}