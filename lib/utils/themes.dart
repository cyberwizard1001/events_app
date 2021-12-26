import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class darkTheme {
  static Future<ThemeData> get DarkTheme async => ThemeData(
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
          filled: true,
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: colors.darkAccentColor, width: 1.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: colors.darkAccentColor, width: 1.0)),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: colors.darkAccentColor, width: 1.0),
          ),
          contentPadding: const EdgeInsets.all(7.0),
          fillColor: colors.darkScaffoldColor,
          labelStyle: GoogleFonts.poppins(color: colors.darkPrimaryTextColor),
          floatingLabelStyle:
              GoogleFonts.poppins(color: colors.darkPrimaryTextColor),
          hintStyle: GoogleFonts.poppins(color: colors.darkPrimaryTextColor),
        ),
      );
}
