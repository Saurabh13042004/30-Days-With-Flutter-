import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(

    canvasColor:  const Color(0xfff5f5f5),
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      color:  Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
      ) 
 );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );


      //Colors
// ignore: prefer_const_constructors
static Color creamColor =  Color(0xfff5f5f5);
// ignore: prefer_const_constructors
static Color darkBluishColor =  Color(0xff403b58);

}

