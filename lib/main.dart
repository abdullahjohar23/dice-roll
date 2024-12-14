import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_color.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  	const MyApp({super.key});

  	@override
  	Widget build(BuildContext context) {
		return const MaterialApp(
            debugShowCheckedModeBanner: false,
			home: Scaffold(
				body: GradientColor(
                    color1: Color.fromARGB(255, 60, 75, 160),
                    color2: Color.fromARGB(255, 20, 28, 49),
				),
			),
		);
  	}
}