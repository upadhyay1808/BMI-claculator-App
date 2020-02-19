import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constaints.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import '../components/round_icon_botton.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/result_page.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight=60;
  int age=1;
Color maleCardColor=kInactivecolor;
Color femaleCardColor=kInactivecolor;
  void updatecolor(Gender selectedGender) {
    maleCardColor = selectedGender == Gender.male ? kActiveColor : kInactivecolor;
    femaleCardColor =
    selectedGender == Gender.female ? kActiveColor : kInactivecolor;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded (
          child:Row(
            children: <Widget>[
              Expanded(
                child: Newcontainer(
                 onPress:(){
                   setState(() {
                   updatecolor(Gender.male);
                   });
                 },
                  colour:maleCardColor,
                   cardChild: Newcard(icon:FontAwesomeIcons.mars,str:'MALE'
                    ),
                 ),
                 ) ,
              Expanded(
              child:  Newcontainer(
                onPress: (){
                setState(() {
                updatecolor(Gender.female);
                });
                },
                colour: femaleCardColor,
                cardChild:Newcard(icon:FontAwesomeIcons.venus,str:'FEMALE'),
                ),
                ),
                ],
                ),
                ),
      Expanded(
        child:  Newcontainer(
                colour: kActiveColor,
          cardChild:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Height',
                style: kLabelTextstyle,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(height.toString(),
                    style: kTitleTextStyle,
                  ),
                  Text('Cm',
                    style: kLabelTextstyle,
                  )
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0x1fEB1555),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  activeTrackColor: Color(0xFFFFFFFF),
                  inactiveTickMarkColor: Color(0xFF8D8E98),
                ),
                child: Slider(
                  inactiveColor: Color(0xFF8D8E98),
                  value: height.toDouble(),
                  min:kMinimumHeight,
                  max:kMaximumHeight,
                  onChanged:(double newHeight){ setState(() {
                    height=newHeight.round();
                  });
                  },
                ),
              ),
            ],
          ),
        ),
              ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded (
                      child:  Newcontainer(colour:kActiveColor,
                      cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',style:kLabelTextstyle),
                      Text(weight.toString(),style: kTitleTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(icon:FontAwesomeIcons.minus,onPressed:(){setState(() {
                            weight--;
                          });}),
                          SizedBox(width: 10),
                          RoundIconButton(icon:FontAwesomeIcons.plus,onPressed: (){setState(() {
                            weight++;
                          });}),
                        ],
                      ),
                      ],
                      ),
                    ),
                    ),
                Expanded(
                  child:  Newcontainer(colour: kActiveColor,
                cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('AGE',style:kLabelTextstyle),
                Text(age.toString(),style: kTitleTextStyle,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundIconButton(icon:FontAwesomeIcons.minus,onPressed:(){setState(() {
                  age--;
                  });}),
                  SizedBox(width: 10),
                  RoundIconButton(icon:FontAwesomeIcons.plus,onPressed: (){setState(() {
                age++;
                });}),
                ],
                ),
                ],
                ),
                      ),),
            ],
            ),
          ),
          BottomButton(
          BoxText:'CALCULATE',
            onTap: (){
            CalculatorBrain calc=CalculatorBrain(height: height,weight: weight);
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) =>ResultPage(
                  bmiResult: calc.CalculateBMI(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterPretation(),
                ),
            ),
            );
            },

          ),
        ],
      ),
    );
  }
}





