import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  const AppBarButton({super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(right: 12.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color(0xfff0f0f0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Icon(
          icon,
          size: 35.0,
          color: const Color(0xff1b1c21),
        ),
      ),
    );
  }
}
