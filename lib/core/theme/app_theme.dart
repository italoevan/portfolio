import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final ThemeData theme = ThemeData(
      primaryColor: const Color(0xff25253F),
      textTheme: TextTheme(
          bodyText2: GoogleFonts.titanOne(color: Colors.white),
          bodyText1: GoogleFonts.arizonia(color: Colors.white, fontSize: 28)));
}
