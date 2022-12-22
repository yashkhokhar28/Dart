import 'package:flutter/material.dart';

void main() {
  runApp(const DivideHorizontally3EqualParts());
}

class DivideHorizontally3EqualParts extends StatefulWidget {
  const DivideHorizontally3EqualParts({super.key});

  @override
  State<DivideHorizontally3EqualParts> createState() =>
      _DivideHorizontally3EqualPartsState();
}

class _DivideHorizontally3EqualPartsState
    extends State<DivideHorizontally3EqualParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
    );
  }
}
