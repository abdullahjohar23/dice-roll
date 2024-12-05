import 'package:flutter/material.dart';
import 'package:dice_roll/dice_roller.dart';

class GradientColor extends StatelessWidget {
    const GradientColor({super.key, required this.color1, required this.color2,});

    final Color color1, color2;

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                        color1,
                        color2,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight
                ),
            ),
            
            child: const Center(
                child: DiceRoller(),
            ),
        );
    }
}