
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';

class ProletScreen extends StatelessWidget {
  const ProletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: Center(
        child: Text("Prolet Screen",style: themeText,),
      ),
    );
  }
}