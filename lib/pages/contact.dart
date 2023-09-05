import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({Key? key}) : super(key: key);

  @override
  State<ContactUS> createState() => _ContactUSState();
}

// ignore: unused_element
class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
    try {
      return WillPopScope(
          onWillPop: () async {
            return Future.value(false);
          },
          child: Scaffold(
            appBar: AppBar(
              leading: const Icon(
                Icons.contact_page,
                color: Colors.white,
                textDirection: null,
              ),
              title: const Text('Contact US'),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              titleSpacing: -5, // Set a smaller value here
            ),
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
          ));
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
