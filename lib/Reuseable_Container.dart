import 'package:flutter/material.dart';


class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({@required this.Colour, this.childReuseableContainer, this.onPress});
  final Color Colour;
  final childReuseableContainer;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childReuseableContainer,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colour,
          //color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
