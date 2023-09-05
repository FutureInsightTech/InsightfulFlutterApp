// ignore: camel_case_types

import 'package:flutter/material.dart';
import 'package:future_insight/pages/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

// ignore: camel_case_types
class assignment_service extends StatelessWidget {
  const assignment_service({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pushReplacement(
                context,
                PageTransition(
                  child: const Services(),
                  type: PageTransitionType.leftToRightWithFade,
                  duration: const Duration(milliseconds: 500),
                ),
              ),
            ),
            title: const Text('Student Assignments'),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/services/assignment/', // replace with your actual URL
          ),
        ));
  }
}
