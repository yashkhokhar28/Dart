import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnlineImage(),
    ),
  );
}

class OnlineImage extends StatefulWidget {
  const OnlineImage({super.key});

  @override
  State<OnlineImage> createState() => _OnlineImageState();
}

class _OnlineImageState extends State<OnlineImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Image Viewer"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png")
          ],
        ),
      ),
    );
  }
}
