// ignore: file_names
import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.all(25),
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
                    // Add more bullet points as needed
                  ],
                  buttonLabels: const ["Select Package", "Terms & Conditions"],
                  onButton1Pressed: () {
                    // Handle the first button tap
                  },
                  onButton2Pressed: () {
                    // Handle the second button tap
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
