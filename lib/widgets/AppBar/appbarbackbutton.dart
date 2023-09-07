import 'package:flutter/material.dart';

class BackCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  BackCustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(title),
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
