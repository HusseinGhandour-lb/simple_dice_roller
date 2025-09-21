import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 105, 240, 229),
          Color.fromARGB(255, 3, 123, 123),
        ]),
      ),
    ),
  );
}
