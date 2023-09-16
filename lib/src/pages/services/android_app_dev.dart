import 'package:flutter/material.dart';
import 'package:future_insight/src/pages/submit-task.dart';
import 'package:future_insight/src/pages/terms-&-condition.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';
import 'package:future_insight/src/widgets/services-cards.dart';
import 'package:future_insight/src/widgets/text_style_service.dart';

// ignore: camel_case_types
class android_app_service extends StatefulWidget {
  const android_app_service({super.key});

  @override
  State<android_app_service> createState() => _android_app_serviceState();
}

// ignore: camel_case_types
class _android_app_serviceState extends State<android_app_service> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: BackCustomAppBar(
          title: "Android Application",
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Text(
                  "Android Application Development Tiers:",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "Unlocking the Potential of Your Mobile Experience",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "At Future Insight, we offer three comprehensive tiers for Android application development, each tailored to meet your specific needs and requirements. Our aim is to deliver exceptional mobile experiences that captivate your audience and drive your business forward. Whether you're looking for a streamlined and cost-effective solution or a feature-rich and robust application, we have the right tier for you. Let's explore the tiers and discover the possibilities that await.",
                  textAlign: TextAlign.justify,
                  style: CustomTextStyles.regularTextStyle,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "Flexible Pricing: Choose the Plan That Fits Your Budget",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                CardService(
                  cardTitle: "Normal Package",
                  bulletPoints: const [
                    "Personalize the UI to Your Liking",
                    "Harnessing Cutting-Edge Technologies",
                    "Comprehensive Guidance Documentation",
                    "Expert Front-End Development",
                    "One Video Call Support"
                  ],
                  buttonLabels: const ["Select Package", "Terms & Conditions"],
                  onButton1Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const select_Package(),
                        transitionDuration: const Duration(
                            milliseconds:
                                300), // Set the total animation duration
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                    // Handle the first button tap
                  },
                  onButton2Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const TermConditions(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                    // Handle the second button tap
                  },
                ),
                const SizedBox(height: 15),
                CardService(
                  cardTitle: "Advanced Package",
                  bulletPoints: const [
                    // Add more bullet points as needed
                  ],
                  buttonLabels: const ["Select Package", "Terms & Conditions"],
                  onButton1Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const select_Package(),
                        transitionDuration: const Duration(
                            milliseconds:
                                300), // Set the total animation duration
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                    // Handle the first button tap
                  },
                  onButton2Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const TermConditions(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                    // Handle the second button tap
                  },
                ),
                const SizedBox(height: 15),
                CardService(
                  cardTitle: "Premium Package",
                  bulletPoints: const [
                    //add points here
                  ],
                  buttonLabels: const ["Select Package", "Terms & Conditions"],
                  onButton1Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const select_Package(),
                        transitionDuration: const Duration(
                            milliseconds:
                                300), // Set the total animation duration
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                    // Handle the first button tap
                  },
                  onButton2Pressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const TermConditions(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          var curve =
                              Curves.easeInOut; // Adjust the curve as needed
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
