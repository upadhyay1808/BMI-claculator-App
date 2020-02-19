import 'package:flutter/material.dart';
class Newcontainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  Newcontainer({@required this.colour,this.cardChild,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration:BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
