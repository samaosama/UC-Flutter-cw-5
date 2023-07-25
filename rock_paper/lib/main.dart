import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

var num1 = Random().nextInt(3) + 1;
var num2 = Random().nextInt(3) + 1;

void change() {
  num1;
  num2;
}

// chnage_numm() {
//   setState() {
//     if (num1 == 3) {
//       Image.asset('assets/images/i_3.png');
//     } else if (num1 == 2) {
//       Image.asset('assets/images/i_2.png');
//     } else {
//       Image.asset('assets/images/i_1.png');
//     }

//     if (_2 == 1) {
//       Image.asset('assets/images/i_1.png');
//     } else if (_2 == 2) {
//       Image.asset('assets/images/i_2.png');
//     } else {
//       Image.asset('assets/images/i_3.png');
//     }
//   }
// }

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 222, 146),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 181, 34),
          title: const Text('Rock Paper Scissors!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      "assets/images/i_$num1.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/i_$num2.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'Player 1(You)',
                  style: GoogleFonts.ptSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  'Player 2',
                  style: GoogleFonts.ptSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: change,
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text(
                  'Play',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
