import 'package:facebook/utils/app_colors.dart';
import 'package:facebook/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  bool isFilled;
  VoidCallback? onPressed;

  CustomButton({
    super.key,
    required this.text,
    required this.isFilled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: isFilled ? AppColors.blue : AppColors.white,
        foregroundColor: isFilled ? AppColors.white : AppColors.blue,
        padding: EdgeInsets.symmetric(vertical: 15),
        side: BorderSide(color: isFilled ? AppColors.transparent : AppColors.blue),
      ),
      child: Text(text, style: AppStyles.regular16),
    );
  }
}