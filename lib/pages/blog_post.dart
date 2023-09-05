// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

class blog_post extends StatelessWidget {
  const blog_post({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: WebViewWidget(
        url: 'https://future-insight.blog/post', // replace with your actual URL
      ),
    );
  }
}
