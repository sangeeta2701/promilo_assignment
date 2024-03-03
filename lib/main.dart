import 'package:flutter/material.dart';
import 'package:promilo_assignment/Screens/login_screen.dart';
import 'package:promilo_assignment/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          
          iconTheme: IconThemeData(
            
            color: bColor
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          
          hintStyle: TextStyle(
            fontSize: 12,
            color: gColor,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: gColor.withOpacity(0.3),
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: themeColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          )
        ),
      ),
      home: LoginScreen(),
      
    );
  }
}

