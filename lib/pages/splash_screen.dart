import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:future_insight/pages/Bottom_Nav.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String _animationPath =
      'assets/lottie/splash_screen/Future_Insight.json';

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          child: const Navbar(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(SplashScreen._animationPath),
          const SizedBox(height: 20),
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText(
                'Future Insight',
                textStyle: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 32.0,
                ),
                speed: const Duration(
                    milliseconds:
                        100), // Adjust this value to change the typing speed
              ),
            ],
          ),
        ],
      ),
    );
  }
}
