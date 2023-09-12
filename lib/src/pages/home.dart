import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/WebViewWidget.dart';
import 'package:future_insight/src/widgets/AppBar/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icons.home, title: "Home"),
      backgroundColor: Colors.black,
      body: const WebViewWidget(
        url: 'https://future-insight.blog/', // replace with your actual URL
      ),
    );
  }
}
