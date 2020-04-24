import'package:flutter/material.dart';
import 'constant.dart';
import 'Reuseable_Container.dart';
import 'CalculatorBrain.dart';
import 'buttomContainer.dart';
Calculation Calculate = Calculation();

class resultPage extends StatelessWidget {
  resultPage({@required this.BMIresult,@required this.textResult, @required this.Interpretation});
  final String BMIresult;
  final String textResult;
  final String Interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
//              margin: EdgeInsets.all(10.0),
//              padding: EdgeInsets.all(10.0),
//              color: Color(0xFF1D1E33),
              child: Container(
                child: Text(
                  'Your Result',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50.0,fontWeight:FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableContainer(
                Colour: Kactive_ResuableContainer_color,
                childReuseableContainer: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text(textResult.toUpperCase(),style: Kresult,),
                    Text(BMIresult.toUpperCase(),style: KresultValue,),
                    Text(Interpretation.toUpperCase(),textAlign: TextAlign.center,style: K_interpretaion,)
                  ],

                ),
              ),
            ),
            Expanded(
              child: buttomContainer(onTap:() {
                Navigator.pop(context);
              },buttomTitle:'Re-Calculate',
              ),
            )
          ],
        ),
      ),
    );
  }
}

//dynamic Calculator() {
//  double Mheight = height / 100;
//  //FORMULA = KG/M^2
//  double result = weight / pow(Mheight, 2);
//  return result.toStringAsFixed(1);
//}
//
//String getResult(){
//  if (result>=25){
//    return
//  }
//}