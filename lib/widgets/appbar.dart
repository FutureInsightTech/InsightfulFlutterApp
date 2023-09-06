import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        icon,
        color: Colors.white,
        textDirection: null,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      titleSpacing: -5, // Set a smaller value here
    );
  }
}
