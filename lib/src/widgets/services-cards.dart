// ignore: file_names
import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  final String cardTitle;
  final List<String> bulletPoints;
  final List<String> buttonLabels;
  final VoidCallback onButton1Pressed;
  final VoidCallback onButton2Pressed;

  CardService({
    required this.cardTitle,
    required this.bulletPoints,
    required this.buttonLabels,
    required this.onButton1Pressed,
    required this.onButton2Pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Bullet points
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  bulletPoints.map((point) => buildBulletPoint(point)).toList(),
            ),
            const SizedBox(
                height: 10), // Add spacing between bullet points and buttons

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: onButton1Pressed,
                  child: Text(buttonLabels[0]),
                ),
                ElevatedButton(
                  onPressed: onButton2Pressed,
                  child: Text(buttonLabels[1]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.check_circle,
                color: Colors.orange,
                size: 18,
              ),
            ),
          ),
          TextSpan(
            text: '$text\n',
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
