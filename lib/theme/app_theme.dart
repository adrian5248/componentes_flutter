
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Aqui hago las declaraciones de los colores
  static const mainColor = Color.fromARGB(255, 121, 103, 156);
  static const backColor = Color.fromARGB(255, 183, 171, 243);

  //Aqui las declaraciones del tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme: TextTheme(
            headlineLarge: GoogleFonts.acme(
              color: mainColor,
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              //esto es para poner una linea debajo del texto
              decoration: TextDecoration.underline,
              //esto es para ponerle color a la linea
              decorationColor: mainColor,
              //esto es para agregar otras cosas a la linea
              decorationStyle: TextDecorationStyle.dotted,
              decorationThickness: 3.0,
              fontStyle: FontStyle.italic,
            ),
            //bodySmall:
          ),
      );
}
