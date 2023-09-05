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
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.person_2,
              color: Colors.white,
              textDirection: null,
            ),
            title: const Text('Author: Abdul Rafay'),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            titleSpacing: -5, // Set a smaller value here
          ),
          backgroundColor: Colors.black,
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/author', // replace with your actual URL
          ),
        ));
  }
}
