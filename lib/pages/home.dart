import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          textDirection: null,
        ),
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        titleSpacing: -5, // Set a smaller value here
      ),
      backgroundColor: Colors.black,
      body: const WebViewWidget(
        url: 'https://future-insight.blog/', // replace with your actual URL
      ),
    );
  }
}
