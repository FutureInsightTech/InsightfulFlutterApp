import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/service-boxes.dart';
import 'package:future_insight/src/pages/services/Assignment.dart';
import 'package:future_insight/src/pages/services/ML.dart';
import 'package:future_insight/src/pages/services/Web.dart';
import 'package:future_insight/src/pages/services/Mobile.dart';
import 'package:future_insight/src/widgets/AppBar/appbar.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    try {
      return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: CustomAppBar(icon: Icons.design_services, title: "Services"),
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
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              const assignemnt_service(),
                          transitionDuration: const Duration(milliseconds: 300),
                          transitionsBuilder: (_, a, __, c) => SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(a),
                            child: c,
                          ),
                        ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ServiceItem(
                  title: 'Machine Learning Development',
                  gifAsset: 'assets/lottie/service/machine-learning.gif',
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ML_Service(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder: (_, a, __, c) => SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(a),
                          child: c,
                        ),
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
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Web_Devlopment(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder: (_, a, __, c) => SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(a),
                          child: c,
                        ),
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
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            const application_development(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder: (_, a, __, c) => SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(a),
                          child: c,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
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
