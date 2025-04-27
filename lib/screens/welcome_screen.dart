import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7e41da),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          final baseSize = screenWidth * 0.35;
          final fontSize = baseSize * 0.1;

          final logoTopPosition = screenHeight * 0.2;
          final welcomeTextTop = screenHeight * 0.47;
          final subtitleTop = screenHeight * 0.54;
          final registerButtonTop = screenHeight * 0.68;
          final alreadyHaveAccountTop = screenHeight * 0.78;
          final shopButtonTop = screenHeight * 0.9;

          final horizontalPadding = screenWidth * 0.04;
          final shopButtonHorizontal = screenWidth * 0.28;
          final registrationButtonHeight = baseSize * 0.43;
          final shopButtonHeight = baseSize * 0.25;

          final borderRadius = 30.0;
          final registerBorderWidth = 1.7;
          final shopBorderWidth = 1.5;

          return Stack(
            children: [
              Positioned(
                left: screenWidth / 2 - (baseSize * 0.75) / 2,
                top: logoTopPosition,
                child: Image.asset(
                  'assets/logo.png',
                  width: baseSize,
                  height: baseSize,
                  fit: BoxFit.contain,
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: welcomeTextTop,
                child: Text(
                  'Добро пожаловать!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize * 2.35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: subtitleTop,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Text(
                    'Приветствуем вас на площадке аренды строительной техники',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 1.1,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: horizontalPadding,
                right: horizontalPadding,
                top: registerButtonTop,
                child: SizedBox(
                  height: registrationButtonHeight,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: registerBorderWidth),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
                    child: Text(
                      'Регистрация',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize * 1.4,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: alreadyHaveAccountTop,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Text(
                    'У меня уже есть аккаунт',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 1.1,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: shopButtonHorizontal,
                right: shopButtonHorizontal,
                top: shopButtonTop,
                child: SizedBox(
                  height: shopButtonHeight,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: shopBorderWidth),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
                    child: Text(
                      'Магазин автозапчастей',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize * 0.8,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
