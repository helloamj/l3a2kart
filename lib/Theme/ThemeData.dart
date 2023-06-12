import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeHelper {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: const Color(0xff939CA3),
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 4.0,
        iconTheme: IconThemeData(color: Color(0xff323232)),
        toolbarHeight: 72,
        titleTextStyle: GoogleFonts.jost(
            color: Color(0xff323232),
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
      primaryTextTheme: TextTheme(
        bodyLarge: GoogleFonts.jost(),
      ),
      secondaryHeaderColor: const Color(0xff939CA3),
    );
  }
}
