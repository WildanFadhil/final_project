import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EdspertNontonId {
  static Widget apply() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          "NONTON",
          style: GoogleFonts.exo(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        Text(
          textAlign: TextAlign.center,
          "·ID",
          style: GoogleFonts.exo(
              fontSize: 40,
              color: Color(0xffFFDE33),
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
