import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/custom_bottom.dart';

class CustomCancelRow extends StatelessWidget {
  const CustomCancelRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Cancel request',
          backgroundColor: Colors.white,
          textColor: AppColors.primaryBlue,
          isSecondary: true,
          onPressed: () {
            Navigator.pop(context); // الرجوع للخطوة السابقة عند الكنسلة
          },
        ),
        const SizedBox(height: 14),
        const Divider(height: 1),
        const SizedBox(height: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.purple, size: 16),
                const SizedBox(width: 8),
                Text(
                  'Ain Shames Universty',
                  style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
                ),
              ],
            ),const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  'EGP 50',
                  style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.payment, size: 14, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
