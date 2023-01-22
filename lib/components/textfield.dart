import 'package:flutter/material.dart';

class FieldBox extends StatefulWidget {
  final bool hideText;
  final Widget icon;
  final Widget passIcon;
  final String label;

  const FieldBox({
    Key? key,
    required this.icon,
    required this.label,
    required this.passIcon,
    required this.hideText,
  }) : super(key: key);

  @override
  State<FieldBox> createState() => _FieldBoxState();
}

class _FieldBoxState extends State<FieldBox> {
  TextEditingController emailTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextEditingController emailTEC = TextEditingController();
    return TextField(
      controller: emailTEC,
      obscureText: widget.hideText,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 225, 225, 225),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        suffixIcon: widget.passIcon,
        prefixIcon: widget.icon,
        hintText: widget.label,
      ),
    );
  }
}
