import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int scissors = 1;
  int rock = 1;
  String player_1 = 'Winner: Player 1';
  String player_2 = 'Winner: Player 2';
  var winners = 'Tie';

  void winner() {
    setState(() {
      scissors = Random().nextInt(3) + 1;
      rock = Random().nextInt(3) + 1;
      if (scissors == 1 && rock == 1) {
        winners = 'Tie';
      } else if (scissors == 1 && rock == 2) {
        winners = 'Winner: Player 1';
      } else if (scissors == 1 && rock == 3) {
        winners = 'Winner: Player 2';
      } else if (scissors == 2 && rock == 1) {
        winners = 'Winner: Player 2';
      } else if (scissors == 3 && rock == 2) {
        winners = 'Winner: Player 2';
      } else if (scissors == 2 && rock == 2) {
        winners = 'Tie';
      } else if (scissors == 3 && rock == 3) {
        winners = 'Tie';
      } else if (scissors == 2 && rock == 3) {
        winners = 'Winner: Player 1';
      } else if (scissors == 3 && rock == 1) {
        winners = 'Winner: Player 1';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 225, 148),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rock Paper Scissors !',
              style: GoogleFonts.kosugiMaru(),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 240, 153, 1),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Padding(padding: EdgeInsets.only(left: 20)),
                Image.asset(
                  'assets/images/i_$scissors.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 50,
                ),
                Image.asset(
                  'assets/images/i_$rock.png',
                  width: 100,
                  height: 100,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'Player 1',
                  style: GoogleFonts.kosugiMaru(
                      textStyle: const TextStyle(fontSize: 20)),
                ),
                const Padding(padding: EdgeInsets.only(left: 80)),
                Text(
                  'Player 2',
                  style: GoogleFonts.kosugiMaru(
                      textStyle: const TextStyle(fontSize: 20)),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  winner();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: Text('Play',
                    style: GoogleFonts.kosugiMaru(
                        textStyle: const TextStyle(
                            fontSize: 20, color: Colors.white)))),
            const SizedBox(
              height: 20,
            ),
            Text(
              winners,
              style: GoogleFonts.kosugiMaru(
                  textStyle: const TextStyle(fontSize: 30)),
            )
          ],
        ),
      ),
    );
  }
}
