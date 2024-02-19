
import 'package:flutter/material.dart';

class AppTheme{
  //Aqui hago las declaraciones de los colores
  static const mainColor = Color.fromARGB(255, 121, 103, 156);
  static const backColor = Color.fromARGB(255, 183, 171, 243); 

  //Aqui las declaraciones del tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: mainColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif',
            ),
          ),
  );
}
