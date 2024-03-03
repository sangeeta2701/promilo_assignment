
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: Center(
        child: Text("Explore Screen",style: themeText,),
      ),
    );
  }
}