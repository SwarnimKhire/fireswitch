import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

TextStyle ftextStyle(
  double size,
  Color color,
  FontWeight weight,
) {
  return GoogleFonts.manrope(
    textStyle: TextStyle(fontSize: size, color: color, fontWeight: weight),
  );
}
