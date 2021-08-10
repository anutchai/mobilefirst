import 'package:flutter/material.dart';

void main() {
  print("Hello World");

  // var app =
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Center(
          // child: Text(
          //   "Anutchai",
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.blue,
          //   ),
          // ),
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/03/26/09/41/muehlenbeckia-690078_960_720.jpg"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}
