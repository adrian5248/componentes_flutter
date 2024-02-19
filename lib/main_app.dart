import 'package:flutter/material.dart';
import 'package:practica3_5c/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //esto es para el color de fondo de la app
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 183, 171, 243),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 121, 103, 156)),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color.fromARGB(255, 239, 239, 241),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif',
            )
          )
        )
      );
  }
}
