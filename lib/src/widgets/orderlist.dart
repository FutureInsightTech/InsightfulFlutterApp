import 'package:flutter/material.dart';

class OrderedListItem extends StatelessWidget {
  final int number;
  final String text;

  const OrderedListItem(this.number, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 20.0), // Adjust padding as needed
      child: ListTile(
        title: Text(
          '$number. $text', // Displays the item number and text
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
