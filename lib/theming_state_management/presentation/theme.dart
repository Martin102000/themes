import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryColors {
  static const purple = Color(0XFF234A91);

  static const green = Color(0XFF912077);
  static const dark = Color(0XFF03091E);
  static const grey = Color(0XFF212738);
  static const lightGrey = Color(0XFFBBBBBB);
  static const veryLightGrey = Color(0XFFF3F3F3);
  static const white = Color(0XFFFFFFFF);
  static const pink = Color(0XFFF5638B);
}

final lightTheme = ThemeData(
  canvasColor: DeliveryColors.white,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: DeliveryColors.lightGrey,
        width: 2,
        style: BorderStyle.solid,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: DeliveryColors.purple),
    ),
    hintStyle: const TextStyle(
      color: DeliveryColors.purple,
      fontSize: 12,
    ),
  ),
);

final darkTheme = ThemeData(
  canvasColor: DeliveryColors.dark,
  scaffoldBackgroundColor: DeliveryColors.dark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.white,
    displayColor: DeliveryColors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: DeliveryColors.white,
        width: 2,
        style: BorderStyle.solid,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: DeliveryColors.purple),
    ),
    fillColor: DeliveryColors.grey,
    filled: true,
    hintStyle: const TextStyle(
      color: DeliveryColors.white,
      fontSize: 12,
    ),
  ),
);
