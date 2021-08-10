import 'package:flutter/material.dart';

void main() {
  print("Hello World");

  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Text("5555"),
    ),
    theme: ThemeData(primarySwatch: Colors.green),
  );
  runApp(app);
}
