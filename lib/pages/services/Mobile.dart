// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';
import 'package:future_insight/widgets/AppBar/appbarbackbutton.dart';

// ignore: camel_case_types
class application_development extends StatelessWidget {
  const application_development({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: BackCustomAppBar(title: "Application Development"),
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/services/application-development/', // replace with your actual URL
          ),
        ));
  }
}
