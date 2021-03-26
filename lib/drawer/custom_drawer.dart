import 'package:flutter/material.dart';
import 'package:responsive/custom_divider.dart';
import 'package:responsive/drawer/custom_row.dart';
import '../util/responsive.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/logo_outlook.png',
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Responsive.isDesktop(context) ? Container() : CloseButton(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color: Colors.blue,
              child: CustomRow(
                icon: Icons.edit,
                text: 'New Message',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: Colors.grey[300],
              child: CustomRow(
                icon: Icons.download_outlined,
                text: 'Get Messages',
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomRow(
              icon: Icons.all_inbox,
              text: 'Inbox',
              color: Colors.grey,
              count: 3,
            ),
            CustomDivider(),
            CustomRow(
              icon: Icons.send,
              text: 'Sent',
              color: Colors.grey,
            ),
            CustomDivider(),
            CustomRow(
              icon: Icons.drafts,
              text: 'Drafts',
              color: Colors.grey,
            ),
            CustomDivider(),
            CustomRow(
              icon: Icons.delete,
              text: 'Deleted',
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
