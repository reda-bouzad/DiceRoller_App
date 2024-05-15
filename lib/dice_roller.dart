// stl: shortcut
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int randomNumber_1 = Random().nextInt(6);
  int randomNumber_2 = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 16, 92),
      child: SafeArea(
        child: Center(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            randomNumber_1 = Random().nextInt(6) + 1;
                            randomNumber_2 = Random().nextInt(6) + 1;
                          });
                          print(randomNumber_1);
                          print(randomNumber_2);
                        },
                        child: Image.asset(
                          "images/dice_$randomNumber_1.png",
                          width: 200,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            randomNumber_1 = Random().nextInt(6) + 1;
                            randomNumber_2 = Random().nextInt(6) + 1;
                          });
                          print(randomNumber_2);
                        },
                        child: Image.asset(
                          "images/dice_$randomNumber_2.png",
                          width: 200,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
