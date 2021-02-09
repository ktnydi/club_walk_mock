import 'package:flutter/material.dart';

final _primary = Color(0xFF29B397);
final _onPrimary = Colors.white;
final _secondary = Color(0xFF29B397);
final _onSecondary = Colors.white;
final _white = Colors.white;

ThemeData lightTheme = ThemeData.from(
  colorScheme: ColorScheme.light(
    primary: _primary,
    onPrimary: _onPrimary,
    secondary: _secondary,
    onSecondary: _onSecondary,
  ),
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 20,
    ),
  ),
).copyWith(
  primaryColor: _primary,
  scaffoldBackgroundColor: Color(0xFFF4F5F7),
  appBarTheme: AppBarTheme(
    color: _white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Typography.material2018().black.headline6.color,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Typography.material2018().black.headline6.color,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      minimumSize: Size(150, 44),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  cardTheme: CardTheme(
    margin: EdgeInsets.zero,
  ),
);
