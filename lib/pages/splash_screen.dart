import 'dart:async';
import 'package:flutter/material.dart';
import 'package:future_insight/hidden_drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String _animationPath =
      'assets/lottie/splash_screen/Future_Insight.json';

  @override
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
          child: const HiddenDrawer(),
          type: PageTransitionType.rightToLeftWithFade,
          duration: Duration(milliseconds: 500),
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
          const SizedBox(height: 16.0),
          const Text(
            'Future Insight',
            style: TextStyle(
              color: Color(0xFFDA532C),
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
