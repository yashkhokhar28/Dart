import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DiceDemo(),
    ),
  );
}

class DiceDemo extends StatefulWidget {
  const DiceDemo({super.key});

  @override
  State<DiceDemo> createState() => _DiceDemoState();
}

class _DiceDemoState extends State<DiceDemo> {
  int i = 1;
  int j = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    i = Random().nextInt(5) + 1;
                    j = Random().nextInt(5) + 1;
                  });
                },
                child: Container(
                  child: Image.asset("assets/dice$i.png"),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    i = Random().nextInt(5) + 1;
                    j = Random().nextInt(5) + 1;
                  });
                },
                child: Container(
                  child: Image.asset("assets/dice$j.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
