import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/quiz_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const colorizeColors = [
    Colors.white,
    Colors.orangeAccent,
    Colors.blue,
    Colors.purple,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextLiquidFill(
                //   text: 'QUIZZER',
                //   waveColor: Colors.white,
                //   boxBackgroundColor: Colors.black,
                //   textStyle: TextStyle(
                //     fontSize: 80.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                //   boxHeight: 300.0,
                // ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'QUIZZER',
                      textStyle: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Horizon',
                          fontStyle: FontStyle.italic),
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
                // Waves
                // DefaultTextStyle(
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 60,
                //   ),
                //   child: AnimatedTextKit(
                //     animatedTexts: [
                //       WavyAnimatedText('QUIZZER'),
                //     ],
                //     isRepeatingAnimation: true,
                //     onTap: () {
                //       print("Tap Event");
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      primary: Colors.blueAccent,
                      onPrimary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()));
                  },
                  child: Text(
                    "Play",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
