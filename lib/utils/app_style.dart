import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

myStyleInter(double fs, Color clr,
    [FontWeight? fw, TextDecoration? decoration]) {
  return GoogleFonts.inter(
      fontSize: fs, color: clr, fontWeight: fw, decoration: decoration);
}
