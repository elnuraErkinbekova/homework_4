import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
          final iconSize = screenHeight * 0.03;
          final tinySpacing = screenHeight * 0.006;
          final fieldHeight = screenHeight * 0.065;
          final buttonHeight = screenHeight * 0.075;
          final suffixIconMinSize = screenHeight * 0.025;
          final circleSize = screenHeight * 0.05;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.06),

                Row(
                  children: [
                    Container(
                      width: circleSize,
                      height: circleSize,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff7e41da),
                          size: iconSize,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Регистрация',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize * 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: circleSize),
                  ],
                ),

                SizedBox(height: screenHeight * 0.05),

                buildLabel('Фамилия', fontSize),
                SizedBox(height: tinySpacing),
                buildTextField(screenWidth, fieldHeight, 'Иванов', iconSize),

                SizedBox(height: tinySpacing * 1.5),

                buildLabel('Имя', fontSize),
                SizedBox(height: tinySpacing),
                buildTextField(screenWidth, fieldHeight, 'Иван', iconSize),

                SizedBox(height: tinySpacing * 1.5),

                buildLabel('Номер телефона', fontSize),
                SizedBox(height: tinySpacing),
                buildTextField(screenWidth, fieldHeight, '(+996) 500 000 000', iconSize),

                SizedBox(height: tinySpacing * 1.5),

                buildLabel('Пароль', fontSize),
                SizedBox(height: tinySpacing),
                SizedBox(
                  height: fieldHeight,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff7e41da),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: fieldHeight * 0.3,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.02),
                        child: Icon(
                          Icons.visibility,
                          color: Colors.white70,
                          size: iconSize,
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minHeight: suffixIconMinSize,
                        minWidth: suffixIconMinSize,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

                SizedBox(height: tinySpacing * 5),

                SizedBox(
                  width: double.infinity,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        color: const Color(0xff7e41da),
                        fontSize: fontSize * 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildTextField(
      double screenWidth, double fieldHeight, String hintText, double iconSize) {
    return SizedBox(
      height: fieldHeight,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff7e41da),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white70),
          contentPadding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: fieldHeight * 0.3,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildLabel(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize * 1.1,
      ),
    );
  }
}
