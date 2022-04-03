import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  // final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.system,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        // appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      ),
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   accentColor: Colors.purple,
      //   appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      //   // backgroundColor: Colors.black,
      //   textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
      // ),

      // theme: ThemeData(
      //   colorScheme: ColorScheme(
      //     brightness: Brightness.dark,
      //     primary: Color(0xFF0A0E21),
      //     onPrimary: Colors.white,
      //     // Colors that are not relevant to AppBar in LIGHT mode:
      //     secondary: Color(0xFF0A0E21),
      //     onSecondary: Colors.white,
      //     background: Color(0xFF0A0E21),
      //     onBackground: Colors.white,
      //     surface: Color(0xFF0A0E21),
      //     onSurface: Colors.white,
      //     error: Color(0xFF0A0E21),
      //     onError: Colors.white,
      //   ),
      // ),
      home: const InputPage(),
    );
  }
}
