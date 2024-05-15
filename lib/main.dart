import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screen.dart';

var sColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
var dColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(
        255, 60, 110, 122));
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: dColorScheme,
      cardTheme: CardTheme().copyWith(
        color: dColorScheme.primaryContainer,
        shadowColor: Colors.black38,
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: dColorScheme.primaryContainer,
            backgroundColor: dColorScheme.onSecondaryContainer
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: sColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: sColorScheme.onPrimaryContainer,
        foregroundColor: sColorScheme.primaryContainer,
      ),
      cardTheme: CardTheme().copyWith(
        color: sColorScheme.primaryContainer,
        shadowColor: Colors.black38,
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: sColorScheme.onBackground,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: sColorScheme.onSecondaryContainer,
        ),
      ),
    ),
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
