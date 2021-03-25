import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Row(
            children: [
              Icon(Icons.edit),
              Text(
                'New Message',
              ),
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Row(
            children: [
              Icon(Icons.download_outlined),
              Text('Get Messages'),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
