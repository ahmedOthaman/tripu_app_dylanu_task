import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSecondary;
  final Color? backgroundColor; // 1. إضافة متغير اختياري للون الخلفية
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isSecondary = false,
    this.backgroundColor,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:  AppTextStyles.onBottomNext.copyWith(
        color: textColor ?? Colors.grey.shade800,
        ),
        ),
      ),
    );
  }
}
