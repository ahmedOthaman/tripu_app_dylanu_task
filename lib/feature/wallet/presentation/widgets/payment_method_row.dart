import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import '../../../../core/theme/app_colors.dart';

class PaymentMethodRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onChange;

  const PaymentMethodRow({
    super.key,
    required this.icon,
    required this.title,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: AppColors.textDark, size: 24),
            const SizedBox(width: 14),
            Text(title, style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 16)), // استخدام ستايل العناوين الداكنة
          ],
        ),
        TextButton(
          onPressed: onChange,
          child: const Text(
            'Change',
            style: TextStyle(color: AppColors.primaryBlue, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
