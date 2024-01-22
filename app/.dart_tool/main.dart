import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Black and White Background'),
      ),
      body: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black, // Change this to white for a white background
          BlendMode.saturation,
        ),
        child: Container(
          // Your content goes here
          child: Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_image.jpg'), // Replace with your background image
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
