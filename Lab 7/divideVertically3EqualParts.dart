import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: DivideVertically3EqualParts(),
    ),
  );
}

class DivideVertically3EqualParts extends StatefulWidget {
  const DivideVertically3EqualParts({super.key});

  @override
  State<DivideVertically3EqualParts> createState() =>
      _DivideVertically3EqualPartsState();
}

class _DivideVertically3EqualPartsState
    extends State<DivideVertically3EqualParts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.orange,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              )),
              Expanded(
                  child: Container(
                color: Colors.green,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
