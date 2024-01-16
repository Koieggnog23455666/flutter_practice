import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class theme{
 static ThemeData lightTheme(BuildContext context)=>ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      primaryColor: Colors.black12,
     focusColor: theme.creamish,
     brightness: Brightness.light,
     indicatorColor: Colors.white,
     hintColor: theme.DeepPurple,
     primaryColorDark: theme.creamish,
     cardColor: theme.Darkish,
    canvasColor: theme.Darkish,
      fontFamily: GoogleFonts.poppins().fontFamily,
   floatingActionButtonTheme: FloatingActionButtonThemeData(
       foregroundColor: Colors.black,
       backgroundColor: theme.DeepPurple
   ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black12,
      centerTitle: true
    ),
  );
 static ThemeData darkTheme(BuildContext context)=>ThemeData(
      cardColor: theme.creamish,
      brightness: Brightness.dark,
      canvasColor: Vx.gray900,
     focusColor: theme.whiteish,
     indicatorColor: theme.darkDarkish,
      hintColor: theme.whiteish,
     primaryColorDark: theme.whiteish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      buttonTheme: ButtonThemeData(buttonColor: theme.Purpleish),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: theme.darkDarkish
      ),
      appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black12,
      centerTitle: true,
  )
  );
  static Color Darkish=Vx.indigo300;
  static Color Purpleish= Vx.purple400;
  static Color darkDarkish= Vx.gray700;
  static Color creamish=Vx.black;
  static Color whiteish=Colors.white;
  static Color DeepPurple=Vx.indigo500;
}

