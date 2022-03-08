import 'package:flutter/material.dart';

ThemeData userDefinedTheme() => ThemeData(
      fontFamily: "Hind",
      splashColor: Color.fromARGB(255, 235, 252, 47),
      scaffoldBackgroundColor: Color.fromARGB(255, 105, 105, 105),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color.fromARGB(64, 6, 12, 131),
      ), //TextField background
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: Colors.purple, //ElevatedButton face
      ).copyWith(secondary: Colors.lightGreen),

      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 16.0,
            fontFamily: "Hind",
            fontWeight: FontWeight.bold,
            color: Colors.indigo),
        headline2: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        headline4: TextStyle(fontSize: 96.0, fontWeight: FontWeight.normal),
        headline5: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.red),
        headline6: TextStyle(fontSize: 16.0,
            letterSpacing: 3.0,
            wordSpacing: 4.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange),
        bodyText1:
            TextStyle(fontSize: 32.0, fontFamily: "Hind", color: Color.fromARGB(255, 255, 255, 255)),
        bodyText2: TextStyle(
            fontSize: 24.0, fontFamily: "Hind", color: Color.fromARGB(255, 245, 5, 225)), //Text
       
        button:
            TextStyle(fontSize: 20.0, fontFamily: "Hind", color: Colors.red),
        
      ),
    );
