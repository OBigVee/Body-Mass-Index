import 'package:flutter/material.dart';
import 'constant.dart';

class buttomContainer extends StatelessWidget {
  buttomContainer({this.onTap,this.buttomTitle});
  final Function onTap;
  final String buttomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Kbuttom_container_Color,
        margin: EdgeInsets.only(top: 10.0),
        height: 80.0,
        width: double.infinity,
        child: Center(
          //child: RaisedButton(
          child: Text(
            buttomTitle,
            style: TextStyle(
              fontSize: 25.0,fontWeight: FontWeight.bold
              ),
            ),
          //onPressed: () {},
          //),
          ),
        ),
      );
  }
}