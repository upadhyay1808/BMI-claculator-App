import 'package:flutter/material.dart';
import '../constaints.dart';
class Newcard extends StatelessWidget {
  final IconData icon;
  final String str;
  Newcard({@required this.icon,this.str});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size:80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          str,
          style:kLabelTextstyle,
        )
      ],
    );
  }
}
