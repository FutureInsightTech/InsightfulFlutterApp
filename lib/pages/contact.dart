import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class ContactUSPage extends StatefulWidget {
  const ContactUSPage({Key? key}) : super(key: key);

  @override
  State<ContactUSPage> createState() => _ContactUSPageState();
}

class _ContactUSPageState extends State<ContactUSPage> {
  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 50.0),
          child: ContactUs(
            textColor: Colors.white,
            cardColor: Colors.deepOrange,
            companyColor: Colors.white,
            taglineColor: Colors.deepOrange,
            dividerColor: Colors.white,
            logo: const AssetImage('assets/images/futureinsightlogo.png'),
            email: 'futureinsightblog@gmail.com',
            companyName: 'Future Insight',
            phoneNumber: '+923035650798',
            companyFontWeight: FontWeight.bold,
            dividerThickness: 2,
            textFont: "14",
            website: 'https://future-insight.blog/',
            githubUserName: 'FutureInsightTech',
            tagLine: 'Tech, the Future Way',
            twitterHandle: 'future_insight9',
          ),
        ),
      );
    } catch (e) {
      // Handle the error here, you can display an error message or take any other appropriate action.
      return Scaffold(
        body: Center(
          child: Text(
            'An error occurred: $e',
            style: const TextStyle(color: Colors.red),
          ),
        ),
      );
    }
  }
}
