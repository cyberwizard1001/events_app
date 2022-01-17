import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class darkTheme {
  static ThemeData get DarkTheme {
    return ThemeData(
      fontFamily: 'sourceSansPro',
      primaryColor: Colors.white,
      scaffoldBackgroundColor: colors.scaffoldColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.sourceSansPro(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),
        bodyText1: GoogleFonts.sourceSansPro(color: Colors.white, fontSize: 15),
        bodyText2: GoogleFonts.sourceSansPro(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.textBoxBorder, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.accentColor, width: 1.0)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colors.textBoxBorder, width: 1.0),
        ),
        contentPadding: const EdgeInsets.all(7.0),
        labelStyle:
            GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
        floatingLabelStyle:
            GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
        hintStyle:
            GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        buttonColor: colors.buttonTextColor
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colors.accentColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
          )
      ),
    );
  }
}
