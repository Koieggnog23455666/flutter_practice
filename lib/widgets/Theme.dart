import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class theme{
  ThemeData lightTheme(BuildContext context)=>ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: AppBarTheme(
      elevation: 0,

      backgroundColor: Colors.black12,
      centerTitle: true

    )

  );
  ThemeData darkTheme(BuildContext context)=>ThemeData(
      primaryColor: Colors.deepPurple,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black12,
      centerTitle: true,
  )
  );
}

