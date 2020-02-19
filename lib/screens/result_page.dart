import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constaints.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                  style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:Newcontainer(
            colour: kActiveColor,
            cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Text(resultText.toUpperCase(),
                style: kResultTextStyle),
            Text(bmiResult,style:kBMITextStyle,),
              Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
            ],
            ),
          ),
           ),
           BottomButton(onTap: (){
            Navigator.pop(context);},BoxText:'RE-CALCULATE'
          ),
        ],
      )
    );
  }
}
