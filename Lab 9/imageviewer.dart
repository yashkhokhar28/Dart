import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImageViewer(),
    ),
  );
}

class ImageViewer extends StatefulWidget {
  const ImageViewer({super.key});

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Viewer"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/1.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
