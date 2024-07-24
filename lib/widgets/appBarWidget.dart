// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onPress;
  const AppBarWidget({super.key, required this.title, required this.onPress});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // elevation: 1,
      leading: InkWell(
          onTap: widget.onPress,
          child: const Icon(
            Icons.arrow_back,
            size: 15,
          )),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
