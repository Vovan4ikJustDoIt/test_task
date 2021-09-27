import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Task Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();
  Color color = Color.fromRGBO(255, 255, 255, 1.0);

  Future<Color> colorChanges() async {
    setState(() {
      color = Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
          _random.nextInt(255), 1.0);
    });

    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          colorChanges();
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(
              "Hey",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
