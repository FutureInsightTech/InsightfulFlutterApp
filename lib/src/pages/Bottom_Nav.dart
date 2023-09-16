// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:future_insight/src/pages/author.dart';
import 'package:future_insight/src/pages/blog_post.dart';
import 'package:future_insight/src/pages/contact.dart';
import 'package:future_insight/src/pages/services.dart';
import 'package:future_insight/src/pages/home.dart';

class Navbar extends StatefulWidget {
  // const Navbar({super.key});
  const Navbar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _navgationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const blog_post(),
    const Services(),
    const author(),
    const ContactUS()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      bottomNavigationBar: Container(
          // color: Colors.deepOrange,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
              backgroundColor: Colors.black,
              activeColor: Colors.white,
              color: Colors.deepOrange,
              gap: 8,
              padding: const EdgeInsets.all(16),
              tabBackgroundColor: Colors.deepOrange,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.rss_feed,
                  text: "Blog Post",
                ),
                GButton(
                  icon: Icons.design_services,
                  text: "Services",
                ),
                GButton(
                  icon: Icons.person_2,
                  text: "Author",
                ),
                GButton(
                  icon: Icons.contact_page,
                  text: "Contact US",
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (int index) {
                _navgationBottomBar(index);
              },
            ),
          )),
      body: Center(
        child: _pages[_selectedIndex],
      ),
    );
  }
}
