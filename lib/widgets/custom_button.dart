// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:counter_app_ekel_ai_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final title, route;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  const CustomButton(
      {Key? key,
      required this.title,
      this.route,
      this.onPressed,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: backgroundColor ?? Colors.black,
        ),
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomText(
            text: title,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
