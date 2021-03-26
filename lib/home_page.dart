import 'package:flutter/material.dart';
import 'package:responsive/drawer/custom_drawer.dart';
import 'package:responsive/email_detail/email_detail.dart';
import 'package:responsive/email_list/email_list.dart';
import 'package:responsive/util/responsive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: EmailList(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: EmailList(),
            ),
            Expanded(
              flex: 9,
              child: EmailDetail(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: CustomDrawer(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: EmailList(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: EmailDetail(),
            ),
          ],
        ),
      ),
    );
  }
}
