import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Welcome to The App",
              style: TextStyle(fontSize: 10),
            ),
            centerTitle: true,
          ),
          // body: const Text("data"),
          body: Container(
            constraints: const BoxConstraints
                .expand(), // Make the container expand to fill the entire screen
            child: const Image(
              image: AssetImage('/home/nikhil/Desktop/HTML/bird.jpg'),
              fit: BoxFit.fill,
            ),
          )),
    ),
  );
}
