import 'package:flutter/material.dart';
import 'package:responsive/drawer/custom_drawer.dart';
import 'package:responsive/email_detail/email_detail.dart';
import 'package:responsive/email_list/email_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 2,
            child: EmailList(),
          ),
          Expanded(
            flex: 6,
            child: EmailDetail(),
          ),
        ],
      ),
    );
  }
}
