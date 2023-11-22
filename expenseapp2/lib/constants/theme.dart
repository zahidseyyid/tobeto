import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: accentColor,
    primary: primaryColor,
    error: errorColor,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: appBarBackgroundColor,
    foregroundColor: appBarForegroundColor,
  ),
  cardTheme: CardTheme(
    color: cardBackgroundColor,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: expenseItemTitleColor),
        bodyMedium: TextStyle(color: expenseItemSubtitleColor),
        titleMedium: TextStyle(color: expenseItemSubtitleColor),
      ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: appBarForegroundColor,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: errorColor,
    contentTextStyle: TextStyle(fontSize: 20, color: appBarForegroundColor),
    actionTextColor: Colors.white,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 20, 
        color: primaryColor, 
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: primaryColor,
  ),
);
