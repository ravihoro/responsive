import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final int count;

  CustomRow({
    this.icon,
    this.text,
    this.color,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: color,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
          ),
        ),
        count == null
            ? Container()
            : Container(
                height: 15,
                width: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$count',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
      ],
    );
  }
}
