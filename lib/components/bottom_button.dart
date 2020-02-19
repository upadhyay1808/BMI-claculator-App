import 'package:flutter/material.dart';
import '../constaints.dart';
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String BoxText;
  BottomButton({@required this.onTap,@required this.BoxText});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child:Container(
        padding: EdgeInsets.all(20),
        child:Text(BoxText,
          textAlign: TextAlign.center,
          style: kLargebuttonStyle,
        ),
        color:kBottomContainerColor,
        height:kBottomContainerHeight,
        width:double.infinity,
      ),
    );
  }
}