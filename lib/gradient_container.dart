import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var start = Alignment.topRight;
var finish = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colorList, begin: start, end: finish),
      ),
      child: Center(child: DiceRoller(),) ,
    );
  }
}