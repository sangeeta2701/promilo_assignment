

import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';

import '../sizedbox.dart';


class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: wColor,
      child: SizedBox(
        height: 100,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                themeColor,
              ),
            ),
            height8,
            Text(
              "$message",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: bColor,
                  height: 1.4),
            ),
          ],
        ),
      ),
    );

  }
}
