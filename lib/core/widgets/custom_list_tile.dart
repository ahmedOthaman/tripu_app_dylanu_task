import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color iconColor;
  final Color titleColor;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.iconColor = AppColors.textDark, // لون افتراضي للأيقونة
    this.titleColor = AppColors.textDark, // لون افتراضي للنص
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: titleColor,
        ),
      ),
      onTap: onTap,
    );
  }
}