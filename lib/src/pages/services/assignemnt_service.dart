// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/src/pages/submit-task.dart';
import 'package:future_insight/src/pages/terms-&-condition.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';
import 'package:future_insight/src/widgets/services-cards.dart';
import 'package:future_insight/src/widgets/text_style_service.dart';

// ignore: camel_case_types
class assignemnt_service extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const assignemnt_service({Key? key});

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
        backgroundColor: Colors.black,
        appBar: BackCustomAppBar(
          title: "Student Assignment",
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Text(
                  "Our Assignment Solutions:",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "Unlocking Your Academic Success",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "Welcome to Future Insight, your solution for expert assignment assistance. Our experienced team provides customized and high-quality assignment solutions for all subjects and academic levels. With our commitment to originality and confidentiality, you can trust us to help you excel in your academics. Join Future Insight today and unlock your full potential!",
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
                    "Solved Assignment",
                    "Documentation for Assignment",
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
                    "Solved Assignment",
                    "Documentation for Assignment",
                    "Two Times for Alteration to Solved Assignment",
                    "One Video Call Support"
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
                    "Solved Assignment",
                    "Documentation for Assignment",
                    "Four Times for Alteration to Solved Assignment",
                    "Three Video Call Support"
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
