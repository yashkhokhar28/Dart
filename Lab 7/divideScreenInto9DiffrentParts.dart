import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DivideScreenInto9DiffrentParts(),
    ),
  );
}

class DivideScreenInto9DiffrentParts extends StatefulWidget {
  const DivideScreenInto9DiffrentParts({super.key});

  @override
  State<DivideScreenInto9DiffrentParts> createState() =>
      _DivideScreenInto9DiffrentPartsState();
}

class _DivideScreenInto9DiffrentPartsState
    extends State<DivideScreenInto9DiffrentParts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                    ),flex: 4,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),flex: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
