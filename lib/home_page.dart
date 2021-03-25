import 'package:flutter/material.dart';
import 'package:responsive/drawer/custom_drawer.dart';
import 'package:responsive/email_list/email_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
          EmailList(),
        ],
      ),
    );
  }
}
