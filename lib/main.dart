import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Widget buildStack() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        coloredBox(Colors.red, '1', 80),
        coloredBox(Colors.yellow, '2', 103),
        coloredBox(Colors.green, '3', 125),
      ],
    );
  }

  Widget coloredBox(Color color, String text, double size) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('First Screen of My apl'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 25,
                top: 30,
                child: buildStack(),
              ),

              Positioned(
                left: 150,
                top: 230,
                child: buildStack(),
              ),

              Positioned(
                left: 275,
                top: 430,
                child: buildStack(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}