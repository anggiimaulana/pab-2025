import 'package:flutter/material.dart';

class CardCategorySk extends StatelessWidget {
  final String title;
  final String icon;
  final String color;
  final String route;

  const CardCategorySk({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor = Color(int.parse("0xFF$color"));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 70,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Image.asset(icon, width: 55, height: 45),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 100, // Agar teks tidak terlalu melebar
          height: 50,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
