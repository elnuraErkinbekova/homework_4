import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Widget coloredBox(Color color, String text, double size, double fontSize) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: Colors.black),
      ),
    );
  }

  Widget buildStack(double baseSize, double fontSize) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        coloredBox(Colors.red, '1', baseSize, fontSize),
        coloredBox(Colors.yellow, '2', baseSize * 1.3, fontSize),
        coloredBox(Colors.green, '3', baseSize * 1.6, fontSize),
      ],
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          final horizontalSpacing = screenWidth * 0.04;
          final verticalSpacing = screenHeight * 0.3;

          final baseSize = screenWidth * 0.18;
          final fontSize = baseSize * 0.25;

          return Stack(
            children: [
              Positioned(
                left: horizontalSpacing,
                top: verticalSpacing * 0.12,
                child: buildStack(baseSize, fontSize),
              ),

              Positioned(
                left: screenWidth / 2 - (baseSize * 1.4) / 2,
                top: verticalSpacing,
                child: buildStack(baseSize, fontSize),
              ),

              Positioned(
                left: screenWidth - horizontalSpacing - baseSize * 1.55,
                top: verticalSpacing * 1.9,
                child: buildStack(baseSize, fontSize),
              ),
            ],
          );
        },
      ),
    );
  }
}