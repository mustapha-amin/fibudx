import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kTextStyle(
  double size, {
  bool? isBold = false,
  Color color = Colors.white,
}) {
  return GoogleFonts.manrope(
    fontSize: size,
    fontWeight: isBold! ? FontWeight.w900 : FontWeight.normal,
    color: color,
  );
}
