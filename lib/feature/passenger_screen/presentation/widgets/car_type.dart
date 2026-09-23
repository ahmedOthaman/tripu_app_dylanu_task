import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';


class VehicleCategoryCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final bool isSelected;
  final VoidCallback onTap;

  const VehicleCategoryCard({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        width: 130, // عرض ثابت ومتناسق للعرض الأفقي بجانب بعضهم
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryBlue.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(16), // البوردر ريديس المطلوب
          border: Border.all(
            color: isSelected ? AppColors.primaryBlue : Colors.grey.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center, // توسيط الصورة والنص
          children: [
            Image.asset(
              imageAsset,
              height: 60,
              width: 90,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
