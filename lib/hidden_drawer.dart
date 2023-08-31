import 'package:flutter/material.dart';
import 'package:future_insight/pages/author.dart';
import 'package:future_insight/pages/blog_post.dart';
import 'package:future_insight/pages/contact.dart';
import 'package:future_insight/pages/home.dart';
import 'package:future_insight/pages/services.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  // ignore: non_constant_identifier_names
  final text_style = const TextStyle(
      color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold);

  //List containing all the screens for the drawer
  List<ScreenHiddenDrawer> _pages = [];
  //initialize the state
  @override
  void initState() {
    super.initState();
    //Calling the pages
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Home',
            baseStyle: text_style,
            selectedStyle: text_style,
            colorLineSelected: Colors.black,
          ),
          HomeScreen()),
      //Blog Post Link
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Blog Post',
            baseStyle: text_style,
            selectedStyle: text_style,
            colorLineSelected: Colors.black,
          ),
          const blog_post()),

      //Services
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Services',
            baseStyle: text_style,
            selectedStyle: text_style,
            colorLineSelected: Colors.black,
          ),
          const Services()),
      //Author
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Author',
            baseStyle: text_style,
            selectedStyle: text_style,
            colorLineSelected: Colors.black,
          ),
          const author()),
      //Contact
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Contact us',
            baseStyle: text_style,
            selectedStyle: text_style,
            colorLineSelected: Colors.black,
          ),
          const contact_us())
    ];
  }

  //main configuation for the hidden drawer
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepOrange,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 45.0,
    );
  }
}
