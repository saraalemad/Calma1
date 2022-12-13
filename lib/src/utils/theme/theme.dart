import 'package:calma1/src/utils/theme/widget_themes/test_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TAppTheme{

 TAppTheme._();
 static  ThemeData lightTheme =ThemeData(
     brightness: Brightness.light,
 textTheme: TTextTheme.lightTextTheme,
 );
 static  ThemeData darkTheme = ThemeData(
     brightness: Brightness.dark,
 textTheme: TTextTheme.darkTextTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom() )
 );
}