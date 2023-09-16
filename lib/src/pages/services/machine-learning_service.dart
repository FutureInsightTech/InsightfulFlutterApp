import 'package:flutter/material.dart';
import 'package:future_insight/src/pages/submit-task.dart';
import 'package:future_insight/src/pages/terms-&-condition.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';
import 'package:future_insight/src/widgets/services-cards.dart';
import 'package:future_insight/src/widgets/text_style_service.dart';

class machine_learning_service extends StatefulWidget {
  const machine_learning_service({super.key});

  @override
  State<machine_learning_service> createState() =>
      _machine_learning_serviceState();
}

class _machine_learning_serviceState extends State<machine_learning_service> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: BackCustomAppBar(
          title: "Machine Learning Development",
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Text(
                  "Empowering Success with Revolutionary Machine Learning Solutions",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: CustomTextStyles.defaultSpacing.vertical),
                const Text(
                  "Welcome to Future Insight, your premier destination for cutting-edge machine learning solutions. Our expert team of data scientists, engineers, and designers is dedicated to delivering tailored services that harness the power of artificial intelligence. From advanced model development to algorithm optimization, we provide innovative solutions to drive your business forward. Partner with us to unlock the transformative potential of machine learning and stay ahead of the competition.",
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
                    "Unleash the Power of Data Creation",
                    "Generate Diverse and Representative Datasets",
                    "Custom Data Creation Made Easy",
                    "Documentation"
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
                    "Seamlessly Train and Test Your Models",
                    "Empower your ML Journey",
                    "Achieve Accurate Results with Your Own Data",
                    "Alteration to the Model",
                    "One Video Call Support",
                    "Documentation"
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
                    "Next-Level Model Training and Testing Experience",
                    "Intuitive GUI and Powerful APIs for Your Models",
                    "2 Alteration to ML Model",
                    "2 Video Call Support",
                    "Documentation"
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
