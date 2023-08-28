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
  final text_style = TextStyle(
      color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold);

  //List containing all the screens for the drawer
  List<ScreenHiddenDrawer> _pages = [];
  //initialize the state
  void initState() {
    super.initState();
    //Calling the pages
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Home', baseStyle: text_style, selectedStyle: text_style),
          HomeScreen()),
      //Blog Post Link
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Blog Post',
              baseStyle: text_style,
              selectedStyle: text_style),
          blog_post()),

      //Services
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Services',
              baseStyle: text_style,
              selectedStyle: text_style),
          services()),
      //Author
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Author', baseStyle: text_style, selectedStyle: text_style),
          author()),
      //Contact
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Contact us',
              baseStyle: text_style,
              selectedStyle: text_style),
          contact_us())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepOrange,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50.0,
    );
  }
}
