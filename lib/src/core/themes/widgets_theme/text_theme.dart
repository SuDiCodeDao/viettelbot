import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displaySmall: GoogleFonts.poppins(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 24,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    displaySmall: GoogleFonts.poppins(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
