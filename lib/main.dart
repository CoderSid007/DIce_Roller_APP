import 'package:flutter/material.dart';
import 'package:udemy_practice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 45, 4, 107), Color.fromARGB(255, 73, 3, 123)),
      ),
    ),
  );
}
