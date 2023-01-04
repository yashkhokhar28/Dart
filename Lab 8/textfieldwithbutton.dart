import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TextFieldWithButton(),
    ),
  );
}

class TextFieldWithButton extends StatefulWidget {
  const TextFieldWithButton({super.key});

  @override
  State<TextFieldWithButton> createState() => _TextFieldWithButtonState();
}

class _TextFieldWithButtonState extends State<TextFieldWithButton> {
  TextEditingController myController = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field With Button"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: myController,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                text = myController.text;
              });
            },
            child: Text("Click"),
          ),
          Text(
            text,
            style:
                GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
