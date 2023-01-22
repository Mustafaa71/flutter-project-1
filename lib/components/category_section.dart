import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  final IconData icon;
  final String iconName;

  const CategoryIcons({
    Key? key,
    required this.icon,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: const Color(0xfff0f0f0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Icon(
            icon,
            size: 50.0,
          ),
        ),
        Text(
          iconName,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
