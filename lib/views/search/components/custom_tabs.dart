import 'package:flutter/material.dart';

class CustomTabButton extends StatelessWidget {
  CustomTabButton({required this.name, required this.icon});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(icon, size: 14), const SizedBox(width: 8.0), Text(name)],
    );
  }
}
