import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'News',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
    // Your widget implementation
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(50.0); // Provide the height of the bar
}
 