import 'package:flutter/material.dart';
import 'package:go_transitions/go_transitions.dart';

class AppTheme {
  static const Color fontColor = Colors.white;
  static const Color iconColor = Colors.white;
  static const Color inactiveIconColor = Colors.grey;
  static const Color backgroundColor = Color.fromARGB(255, 24, 23, 28);
  static const Color bottomNavbarColor = Color.fromARGB(255, 24, 23, 28);
  static const Color borderColor = Color.fromARGB(255, 44, 45, 49);
  static const Color gradientColor1 = Color.fromARGB(255, 169, 1, 64);
  static const Color gradientColor2 = Color.fromARGB(255, 85, 1, 32);

  static ThemeData get theme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: iconColor,
          size: 23,
        ),
        titleTextStyle: TextStyle(
          color: fontColor,
          fontSize: 20,
          fontFamily: 'Syne',
          fontWeight: FontWeight.w700,
        ),
      ),
      scaffoldBackgroundColor: backgroundColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: gradientColor1,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: GoTransitions.fade,
        },
      ),
      iconTheme: IconThemeData(
        color: iconColor,
        size: 30,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: bottomNavbarColor,
        selectedItemColor: fontColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedIconTheme: IconThemeData(
          color: iconColor,
          size: 20,
        ),
        unselectedIconTheme: IconThemeData(
          color: inactiveIconColor,
          size: 20,
        ),
        selectedLabelStyle: TextStyle(
          color: fontColor,
          fontFamily: 'Syne',
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppTheme.inactiveIconColor,
          fontFamily: 'Syne',
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
