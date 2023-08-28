// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class Services extends StatelessWidget {
//   const Services({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: ListView(
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           const ListTile(
//             title: Text(
//               'Future Insight Services',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Lottie.asset(
//                   'assets/lottie/service/assignment.json',
//                   height: 150,
//                   width: 150,
//                 ),
//                 const SizedBox(width: 16),
//                 const Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Student Assignments',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Description 1',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Lottie.asset(
//                   'assets/lottie/service/machine.json',
//                   height: 150,
//                   width: 150,
//                 ),
//                 const SizedBox(width: 16),
//                 const Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Machine Learning Development',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Description 2',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Lottie.asset(
//                   'assets/lottie/service/web-dev.json',
//                   height: 150,
//                   width: 150,
//                 ),
//                 const SizedBox(width: 16),
//                 const Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Web Development',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Description 3',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Lottie.asset(
//                   'assets/lottie/service/android.json',
//                   height: 150,
//                   width: 150,
//                 ),
//                 const SizedBox(width: 16),
//                 const Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Android Development',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Description 4',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ServiceItem extends StatelessWidget {
  final String title;
  final String description;
  final String animationAsset;

  const ServiceItem({
    Key? key,
    required this.title,
    required this.description,
    required this.animationAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Lottie.asset(
                    animationAsset,
                    height: 150,
                    width: 150,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          ListTile(
            title: Text(
              'Future Insight Services',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          ServiceItem(
            title: 'Student Assignments',
            description:
                'Struggling with assignments? I am here to help you tackle them head-on with confidence and ease.',
            animationAsset: 'assets/lottie/service/assignment.json',
          ),
          SizedBox(height: 16),
          ServiceItem(
            title: 'Machine Learning Development',
            description: 'Description 2',
            animationAsset: 'assets/lottie/service/machine.json',
          ),
          SizedBox(height: 16),
          ServiceItem(
            title: 'Website Development',
            description: 'Description 3',
            animationAsset: 'assets/lottie/service/web-dev.json',
          ),
          SizedBox(height: 16),
          ServiceItem(
            title: 'Android Development',
            description: 'Description 4',
            animationAsset: 'assets/lottie/service/android.json',
          ),
        ],
      ),
    );
  }
}
