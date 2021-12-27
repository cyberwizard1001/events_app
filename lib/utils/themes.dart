import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class darkTheme {
  static ThemeData get DarkTheme{
    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: Colors.white,
      scaffoldBackgroundColor: colors.darkScaffoldColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),
        bodyText1: GoogleFonts.poppins(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100),
        bodyText2: GoogleFonts.poppins(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: colors.textBoxBorder, width: 1.0)),
        focusedBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(color: colors.darkAccentColor, width: 1.0)),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.textBoxBorder, width: 1.0),
        ),
        contentPadding: const EdgeInsets.all(7.0),
        labelStyle: GoogleFonts.sourceSansPro(color: colors.darkPrimaryTextColor),
        floatingLabelStyle:
        GoogleFonts.sourceSansPro(color: colors.darkPrimaryTextColor),
        hintStyle: GoogleFonts.sourceSansPro(color: colors.darkPrimaryTextColor),
      ),
    );
  }
}
