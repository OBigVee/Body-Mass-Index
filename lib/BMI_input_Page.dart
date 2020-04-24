import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Contents.dart';
import 'Reuseable_Container.dart';
import 'constant.dart';
import 'resultPage.dart';
import 'buttomContainer.dart';
import 'RoundIconButton.dart';
import 'CalculatorBrain.dart';
enum Gender_selection { male, female }
Gender_selection gender;



class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {

//  Color MaleCardColor = inactive_active_ResuableContainer_color;
//  Color FemaleCardColor = inactive_active_ResuableContainer_color;
  //int gender;
//Gender_selection Gender;
  //void Update_Color(Gender_selection gender) {
  //gender==Gender_selection.male  ? MaleCardColor = active_ResuableContainer_color : MaleCardColor=inactive_active_ResuableContainer_color;
  //gender==Gender_selection.female? FemaleCardColor=active_ResuableContainer_color: FemaleCardColor= inactive_active_ResuableContainer_color;
//    if (gender == Gender_selection.male) {
//      if (MaleCardColor == inactive_active_ResuableContainer_color) {
//        MaleCardColor = active_ResuableContainer_color;
//        FemaleCardColor = inactive_active_ResuableContainer_color;
//      } else {
//        MaleCardColor = inactive_active_ResuableContainer_color;
//      }
//    }
//    if (gender == Gender_selection.female) {
//      if (FemaleCardColor == inactive_active_ResuableContainer_color) {
//        FemaleCardColor = active_ResuableContainer_color;
//        MaleCardColor = inactive_active_ResuableContainer_color;
//      } else {
//        FemaleCardColor = inactive_active_ResuableContainer_color;
//      }
//    }
  //}
  int height = 180;
  int weight = 74;
  int age = 19;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Body Mass Index Calculator '),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
//                    child: GestureDetector(
//                      onTap: () {
//                        setState(() {
//                          gender = Gender_selection.male;
//                          //Update_Color(Gender_selection.male);
//                        });
//                        print('male tab working');
//                      },
                    child: ReuseableContainer(
                      onPress: () {
                        setState(() {
                          gender = Gender_selection.male;
                          print('male tab is selected');
                        });
                      },

                      Colour: gender == Gender_selection.male
                          ? Kactive_ResuableContainer_color
                          : Kinactive_active_ResuableContainer_color,
                      //MaleCardColor,
                      childReuseableContainer: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                    //),
                  ),
                  Expanded(
//                    child: GestureDetector(
//                      onTap: () {
//                        setState(() {
//                          gender = Gender_selection.female;
//                          //Update_Color(Gender_selection.female);
//                        });
//                        print('female tab working');
//                      },
                    child: ReuseableContainer(
                      onPress: () {
                        setState(() {
                          gender = Gender_selection.female;
                          print('female tab is selected');
                        });
                      },
                      Colour: gender == Gender_selection.female
                          ? Kactive_ResuableContainer_color
                          : Kinactive_active_ResuableContainer_color,
                      //FemaleCardColor,
                      childReuseableContainer: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                    // ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableContainer(
                Colour: Kactive_ResuableContainer_color,
                childReuseableContainer: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Height', style: KLabel_TextStyle),
                    Row(
                      // mainAxisAlignment is along the length of the row
                      // crossAxisAlignment is along the width of the row
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: K_TextStyle,
                        ),
                        Text(
                          'cm',
                          style: KLabel_TextStyle,
                        )
                      ],
                    ),
                    //IMPLEMENTATION OF FLUTTER SLIDER
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.pink, //Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: Color(0x29eb1555),
                      ),
                      child: Slider(
                        // starting value
                        value: height.toDouble(),
                        // scale
                        min: 120.0, max: 220.0,
                        //activeColor:Colors.white ,//Color(0xffeb1555),

                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                          print(newValue); //this is for terminal sake
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
                  Expanded(
                    child: ReuseableContainer(
                      Colour: Kactive_ResuableContainer_color,
                      childReuseableContainer: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight', style: KLabel_TextStyle),
                          Text(
                            weight.toString(),
                            style: K_TextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight = weight - 1;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      Colour: Kactive_ResuableContainer_color,
                      childReuseableContainer: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: KLabel_TextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: K_TextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age = age - 1;
                                    });
                                  }),
                              SizedBox(
                                width: 30.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buttomContainer(onTap: () {
              Calculation calculate = Calculation(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => resultPage(
                  BMIresult: calculate.Calculator(),
                  textResult: calculate.getResult(),
                  Interpretation: calculate.getIntrepretation(),

                )),
                );
            },buttomTitle:'Calculate',)
          ],
        ));
  }
}