
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: Center(
        child: Text("Account Screen",style: themeText,),
      ),
    );
  }
}