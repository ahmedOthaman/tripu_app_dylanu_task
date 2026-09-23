import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import '../../../../core/theme/app_colors.dart';

class TransactionTile extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String date;
  final String amount;

  const TransactionTile({
    super.key,
    required this.icon,
    required this.iconBgColor,
    required this.title,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        // 💡 1. توسيط كافة عناصر السطر (ال avatar والنصوص والسعر) رأسياً ليكونوا على خط واحد تماماً
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // الأيقونة الدائرية على اليسار
          CircleAvatar(
            radius: 20,
            backgroundColor: iconBgColor.withOpacity(0.1),
            child: Icon(icon, color: iconBgColor, size: 20),
          ),
          const SizedBox(width: 14),

          // 💡 2. العمود المخصص للنصوص ممتد ليأخذ المساحة المتاحة ويحاذي محتواه بدقة
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // حبس أبعاد العمود لمنع التفاوت البصري
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 15, height: 1.2),
                ),
                const SizedBox(height: 2),
                Text(
                  date,
                  style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 12, height: 1.2),
                ),
              ],
            ),
          ),
          const SizedBox(width: 14),

          // 💡 3. السعر مصفوف على نفس السطر في أقصى اليمين ومحاذى للمنتصف تلقائياً
          Text(
            amount,
            style: AppTextStyles.bodyMediumBold.copyWith(
              color: amount.contains('+') ? Colors.green : AppColors.textDark,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
