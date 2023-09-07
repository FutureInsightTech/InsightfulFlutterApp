import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';
import 'package:future_insight/widgets/appbar.dart';

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
          appBar: CustomAppBar(
            icon: Icons.person_2,
            title: 'Author: Abdul Rafay',
          ),
          backgroundColor: Colors.black,
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/author', // replace with your actual URL
          ),
        ));
  }
}
