// ignore: file_names
import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 0.0), // Adjust the padding here
      leading: const Icon(
        Icons.circle, // You can use a different bullet point icon if desired
        color: Colors.orange,
        size: 10, // Adjust the size of the bullet point
      ),
      title: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
