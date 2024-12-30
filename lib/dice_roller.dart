import 'dart:math';
import 'package:flutter/material.dart';
import 'styled_text.dart';

//Widget class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//State class
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png'; //ดึงภาพลูกเต๋า

  @override
  Widget build(BuildContext context) {
    return Column( //ก็อป Column มาใส่หลัง return
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white38,
                padding: const EdgeInsets.only(top: 20)),
            child: const StyledText("Roll Dice"))
      ],
    );
  }

  void rollDice() { //
    setState(() {
      var diceRoll = Random().nextInt(6) + 1; //สุ่มค่า 1-6
      print(diceRoll);
      activeDiceImage = 'assets/images/dice-$diceRoll.png'; //ภาพลูกเต๋า
      print("image is random");
    });
  }
}
