// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

class blog_post extends StatelessWidget {
  const blog_post({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.rss_feed,
              color: Colors.white,
              textDirection: null,
            ),
            title: const Text('Blog Post'),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            titleSpacing: -5, // Set a smaller value here
          ),
          backgroundColor: Colors.black,
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/post', // replace with your actual URL
          ),
        ));
  }
}
