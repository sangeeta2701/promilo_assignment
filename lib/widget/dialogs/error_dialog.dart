import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  backgroundColor: wColor,
                                  child: SizedBox(
                                    height:100,
                                    width: 150,
                                    child: Center(child: Text(message,style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: bColor,
                          height: 1.4),)),

                                  ),
      
    );
  }
}