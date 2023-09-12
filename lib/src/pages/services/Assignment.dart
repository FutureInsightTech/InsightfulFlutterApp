// ignore: camel_case_types

import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';

// ignore: camel_case_types
class assignemnt_service extends StatefulWidget {
  const assignemnt_service({super.key});

  @override
  State<assignemnt_service> createState() => _assignemnt_serviceState();
}

// ignore: camel_case_types
class _assignemnt_serviceState extends State<assignemnt_service> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: BackCustomAppBar(
            title: "Student Assignment",
          ),
        ));
  }
}







// Old Code Base
// import 'package:future_insight/src/widgets/WebViewWidget.dart';
//  WebView Stateless Widget
// class assignment_service extends StatelessWidget {
//   const assignment_service({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//         onWillPop: () async {
//           return Future.value(false);
//         },
//         child: Scaffold(
//           appBar: BackCustomAppBar(
//             title: "Student Assignment",
//           ),
//           body: const WebViewWidget(
//             url:
//                 'https://future-insight.blog/services/assignment/', // replace with your actual URL
//           ),
//         ));
//   }
// }
