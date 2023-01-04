import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImageWithStack(),
    ),
  );
}

class ImageWithStack extends StatefulWidget {
  const ImageWithStack({super.key});

  @override
  State<ImageWithStack> createState() => _ImageWithStackState();
}

class _ImageWithStackState extends State<ImageWithStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text On Image"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    "https://previews.123rf.com/images/photoart23d/photoart23d1409/photoart23d140900063/32015624-scattered-3d-white-cubes-8k-abstract-background.jpg"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Yash Khokhar",
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          height: 1.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
