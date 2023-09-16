// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/WebViewWidget.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';

// ignore: camel_case_types
class Web_Devlopment extends StatelessWidget {
  const Web_Devlopment({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: BackCustomAppBar(title: "Website Development"),
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/services/web-development/', // replace with your actual URL
          ),
        ));
  }
}
