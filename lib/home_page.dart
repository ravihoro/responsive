import 'package:flutter/material.dart';
import 'package:responsive/custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
        ],
      ),
    );
  }
}
