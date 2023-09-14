// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/src/widgets/AppBar/appbarbackbutton.dart';
import 'package:future_insight/src/widgets/BulletPoint.dart';
import 'package:future_insight/src/widgets/orderlist.dart';
import 'package:future_insight/src/widgets/text_style_service.dart';

class TermConditions extends StatefulWidget {
  const TermConditions({Key? key}) : super(key: key);

  @override
  State<TermConditions> createState() => _TermConditionsState();
}

class _TermConditionsState extends State<TermConditions> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: BackCustomAppBar(
          title: "Terms & Conditions",
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Terms of Use- Assignment Help Services",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                BulletPoint(
                    text:
                        "The Terms of Use, as modified from time to time, are a kind of binding contract/agreement between Assignment Help Services (We) and the User (you), who can be anyone among the parents, guardians or students and any other individual who are willing to use the services of our website."),
                BulletPoint(
                    text:
                        "It is the sole responsibility of our user (you) to check out and agree to our Terms and Conditions, including Privacy Policy, before getting involved in the utilization of our services through our website or getting engaged in any features, software, applications, software of our website. Once you decide to make the use of any portion of our website (collectively, known as The “Service”), it means that you agree to our Terms of Use. Please don’t use our Service if you have any doubts or disagree to our Terms of Use."),
                SizedBox(height: 20),
                Text(
                  "Description of Service; Minimum Requirement Needs to Be Fulfilled",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Before using any of our services, users (parents, guardians or students) must agree with the conditions mentioned below:",
                    style: CustomTextStyles.regularTextStyle,
                  ),
                ),
                OrderedListItem(1,
                    "If you are a student you should be at least 10 years of old. Being our user, it is important for you to be mature enough to your decision on your own while entering into any of our contracts."),
                OrderedListItem(2,
                    "The user engages into this contract on his/her own desires without being forced by anyone else."),
                OrderedListItem(3,
                    "Once an individual shows his/her interest in any of our products seen at our website on behalf of any entity or an organization, then he or she would take the complete responsibility of agreeing with all our Terms of conditions on behalf of that entity or an organization."),
                OrderedListItem(4,
                    "That user/individual must have a full understanding of Future Insight Contact Page’ Terms of Use, which are mentioned here at our website (future-insight.blog). He or she is highly advisable to read out the information mentioned on the page of Terms of Use before getting into our contract."),
                SizedBox(height: 10),
                Text(
                  "Changes/Modifications to Service",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "We at Future Insight also have the full authority to discontinue the service of our users (you) or stop them from accessing to our website without giving them any prior notice regarding the same. Our company has all the needful rights to make any changes or remove anything from the part of our services whenever we want, and, in this regard, we are not liable to inform our users by sending any kind of notice.",
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.regularTextStyle,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Changes/Modifications to Service",
                  style: CustomTextStyles.centeredTitleStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
