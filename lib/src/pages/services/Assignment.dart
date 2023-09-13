// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';

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
          alignment: Alignment.topCenter, // Set alignment to top center
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: ListView(
              children: [
                const Text(
                  "Our Assignment Solutions:",
                  style: TextStyle(
                    fontSize: 29,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 1.5,
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Unlocking Your Academic Success",
                  style: TextStyle(
                    fontSize: 29,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 1.5,
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Welcome to Future Insight, your solution for expert assignment assistance. Our experienced team provides customized and high-quality assignment solutions for all subjects and academic levels. With our commitment to originality and confidentiality, you can trust us to help you excel in your academics. Join Future Insight today and unlock your full potential!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Flexible Pricing: Choose the Plan That Fits Your Budget",
                  style: TextStyle(
                    fontSize: 29,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 1.5,
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Normal Package",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Bullet points
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "Solved Assignement\n",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "Documentation for Assignment\n",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              // Add more bullet points as needed
                            ],
                          ),
                        ),

                        const SizedBox(
                            height:
                                20), // Add spacing between bullet points and buttons

                        // Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceAround, // Adjust button alignment
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle the first button tap
                              },
                              child: const Text("Select Package"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle the second button tap
                              },
                              child: const Text("Terms & Condition"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )

                // Add more cards with bullet points here if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
