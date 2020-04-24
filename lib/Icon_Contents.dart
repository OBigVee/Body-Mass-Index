import 'package:flutter/material.dart';
import 'constant.dart';


class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label, style: KLabel_TextStyle),
      ],
    );
  }
}
