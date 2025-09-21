import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var activatedImage = 1;

  void rollDice() {
    setState(() {
      activatedImage = randomizer.nextInt(6) + 1;      
    });
  }

  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assests/images/dice-$activatedImage.png', width: 200),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text('roll, dice!'),
          ),
        ],
      );
  }
}