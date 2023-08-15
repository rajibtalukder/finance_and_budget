import 'package:finance_and_budget/view/authentication/login_screen.dart';
import 'package:finance_and_budget/view/budget/budget_screen.dart';
import 'package:finance_and_budget/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 844),
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: _buildTheme(Brightness.light),
              home: const Scaffold(
                body: SplashScreen(),
              ));
        });
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(
    brightness: brightness,
    primarySwatch: primarySwatch,
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.ralewayTextTheme(),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
