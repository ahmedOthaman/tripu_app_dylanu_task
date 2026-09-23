import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_bottom.dart';
import '../../../../core/theme/app_colors.dart';


class FareNegotiatorWidget extends StatelessWidget {
  final int currentFare;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onSubmit;
  final VoidCallback onCancel;

  const FareNegotiatorWidget({
    super.key,
    required this.currentFare,
    required this.onIncrement,
    required this.onDecrement,
    required this.onSubmit,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // صف التحكم في السعر (زيادة ونقصان وعرض العداد)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // زر النقصان (-)
            IconButton(
              onPressed: onDecrement,
              icon: const Icon(Icons.remove_circle_outline, size: 36, color: AppColors.primaryBlue),
            ),
            const SizedBox(width: 24),
            // عرض السعر الحالي بشكل بارز ومتوافق مع ثيم Figma [image_2GDqgD.png]
            Text(
              '$currentFare EGP',
              style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 28, color: AppColors.primaryBlue),
            ),
            const SizedBox(width: 24),
            // زر الزيادة (+)
            IconButton(
              onPressed: onIncrement,
              icon: const Icon(Icons.add_circle_outline, size: 36, color: AppColors.primaryBlue),
            ),
          ],
        ),
        const Spacer(),
        // زر تأكيد وإرسال السعر المزايد عليه "Find a Ride"
        CustomButton(
          text: 'Find a Ride',
          backgroundColor: AppColors.primaryBlue,
          textColor: Colors.white,
          onPressed: onSubmit,
        ),
        const SizedBox(height: 10),
        // زر كنسلة الإجراء تماماً والرجوع للخلف [image_2GDqgD.png]
        CustomButton(
          text: 'Cancel Request',
          backgroundColor: Colors.red.withOpacity(0.1),
          textColor: Colors.red,
          onPressed: onCancel,
        ),
      ],
    );
  }
}
