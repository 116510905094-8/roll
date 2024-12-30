import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

import 'dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: const [Colors.purple, Colors.yellow],
          ),
        ),
        child: const Center(child: DiceRoller()));
  }
}
//TextButton(onPressed: rollDice, child: const Text('Roll Dice'))
