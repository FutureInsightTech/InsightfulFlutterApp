// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/WebViewWidget.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';

// ignore: camel_case_types
class ML_Service extends StatelessWidget {
  const ML_Service({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: BackCustomAppBar(title: "Machine Learning Development"),
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/services/machinelearning/', // replace with your actual URL
          ),
        ));
  }
}
