import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldDemo(),
    ),
  );
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Demo"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                labelText: "Enter Text",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                print(value);
                setState(() {});
              },
            ),
          ),
          Text(
            myController.text,
            style:
                GoogleFonts.openSans(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
