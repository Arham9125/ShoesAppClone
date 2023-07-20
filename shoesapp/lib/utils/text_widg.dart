import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  
String mytext;

double fontsize;

Color? c;

MyText({required this.mytext, required this.fontsize, this.c});

  @override
  Widget build(BuildContext context) {
    return Text(mytext, style:  GoogleFonts.rubik(
          fontWeight: FontWeight.w800, fontSize: fontsize,

          color: c == null ? Colors.white : c,
          
          
          ),
        
        
        );
  }
}