import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
    const DiceRoller({super.key});

    @override
    State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
    String dicePath = 'Asset/image/dice-1.png'; // using the path in a variable so that we can change it in onPressed()

    List<String> myList = [
        'Asset/image/dice-1.png',
        'Asset/image/dice-2.png',
        'Asset/image/dice-3.png',
        'Asset/image/dice-4.png',
        'Asset/image/dice-5.png',
        'Asset/image/dice-6.png',
    ];

    Random random = Random(); // import this "import 'dart:math'";

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                    dicePath, // using the String for dice image path
                    width: 200,
                    fit: BoxFit.fitWidth, // this will maintain the height according to the width
                ),
                
                const SizedBox(height: 20),
                
                TextButton(
                    onPressed: () {
                        // setState() re-executes the build() function
                        setState(() {
                            dicePath = myList[random.nextInt(myList.length)]; // randomly generating image path
                            // print(random.nextInt(5)); generates a random number from 0 to 4
                        });
                    },
                    
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 220, 20, 60), // Crimson Red
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                    ),
                    
                    child: const Text(
                        'Roll Dice',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                        ),
                    ),
                ),
            ],
        );
    }
}
