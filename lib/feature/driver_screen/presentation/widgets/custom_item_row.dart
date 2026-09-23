import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_style.dart';

class CustomItemRow extends StatelessWidget {
  const CustomItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Mostafa',
                style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 15),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 14),
                  const SizedBox(width: 2),
                  Text(
                    '4.8 (130)',
                    style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  // استخدمنا هنا مرونة الـ Text العادي بدون Expanded داخلي متداخل يسبب مشاكل
                  const Expanded(
                    child: Text(
                      '6th October City • مدخل الشباب 70 متر مجاورة ١',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
      ],
    );
  }
}
