import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

// ignore: camel_case_types
class author extends StatelessWidget {
  const author({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: const Scaffold(
          backgroundColor: Colors.black,
          body: WebViewWidget(
            url:
                'https://future-insight.blog/author', // replace with your actual URL
          ),
        ));
  }
}
