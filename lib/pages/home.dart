import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(272822),
      body: WebViewWidget(
        url: 'https://future-insight.blog/', // replace with your actual URL
      ),
    );
  }
}
