import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class darkTheme {
  static ThemeData get DarkTheme {
    return ThemeData(
      fontFamily: 'Nunito',
      primaryColor: Colors.white,
      scaffoldBackgroundColor: colors.scaffoldColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.nunito(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),
          bodyText1: GoogleFonts.nunito(color: Colors.white, fontSize: 16,),
          bodyText2: GoogleFonts.nunito(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          caption: GoogleFonts.nunito(color: Colors.white70, fontSize: 14)
      ),
      iconTheme: IconThemeData(color: colors.accentColor),
      appBarTheme: const AppBarTheme(
          elevation: 0, backgroundColor: Colors.transparent, centerTitle: true),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.textBoxBorder, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.accentColor, width: 1.0)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colors.textBoxBorder, width: 1.0),
        ),
        contentPadding: const EdgeInsets.all(7.0),
        labelStyle: GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
        floatingLabelStyle:
            GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
        hintStyle: GoogleFonts.sourceSansPro(color: colors.primaryTextColor),
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          buttonColor: colors.buttonTextColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colors.buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      )),
    );
  }
}


