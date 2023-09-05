import 'package:flutter/material.dart';
import 'package:future_insight/widgets/service-boxes.dart';
import 'package:future_insight/pages/services/Assignment.dart';
import 'package:future_insight/pages/services/ML.dart';
import 'package:future_insight/pages/services/Web.dart';
import 'package:future_insight/pages/services/Mobile.dart';
import 'package:page_transition/page_transition.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return WillPopScope(
          onWillPop: () async {
            return Future.value(false);
          },
          child: Scaffold(
            backgroundColor: Colors.black,
            body: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ServiceItem(
                    title: 'Student Assignments',
                    gifAsset: 'assets/lottie/service/assignment.gif',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const assignment_service(),
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ServiceItem(
                    title: 'Machine Learning Development',
                    gifAsset: 'assets/lottie/service/machine-learning.gif',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const ML_Service(),
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ServiceItem(
                    title: 'Website Development',
                    gifAsset: 'assets/lottie/service/web.gif',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const Web_Devlopment(),
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ServiceItem(
                    title: 'Application Development',
                    gifAsset: 'assets/lottie/service/mobile.gif',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const application_development(),
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ));
    } catch (e) {
      // Handle the error here, you can display an error message or take any other appropriate action.
      return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            'An error occurred: $e',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }
}
