import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_bottom.dart';
import '../../../../core/theme/app_colors.dart';
import 'car_type.dart';

class Step2ReviewRide extends StatelessWidget {
  final VoidCallback onNext;

  const Step2ReviewRide({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // كروت فئات السيارات رأسية وبجوار بعضها أفقياً حسب الواجهة الأولى [image_13SiLn.png]
        Row(
          children: [
            Expanded(
              child: VehicleCategoryCard(
                title: 'Ride',
                imageAsset: 'assets/images/Img_car1.png',
                isSelected: true,
                onTap: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: VehicleCategoryCard(
                title: 'Comfort',
                imageAsset: 'assets/images/Img_car2.png',
                isSelected: false,
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // حقل عنوان الانطلاق (النقطة الزرقاء)
        Row(
          children: [
            const Icon(Icons.circle, color: AppColors.primaryBlue, size: 10),
            const SizedBox(width: 14),
            Text(
              'Mohammed Ezz El-Arab St',
              style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 14),

        // حقل عنوان الوصول (النقطة البنفسجية)
        Row(
          children: [
            const Icon(Icons.location_on, color: Colors.purple, size: 16),
            const SizedBox(width: 14),
            Text(
              'Ain Shames Universty', // تعديل النص ليتطابق مع إملاء Figma بدقة
              style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 14),

        // عرض السعر وجانبه أيقونة الكاش/الفيزا الصغيرة [image_13SiLn.png]
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'EGP 50',
              style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // أيقونة الفيزا/الكاش الرمادية الصغيرة على اليمين كما بالتصميم
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.payment, size: 16, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 12),

        // شريط وقت السفر ذو الخلفية الزرقاء الخفيفة على كامل العرض [image_13SiLn.png]
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.primaryBlue.withOpacity(0.08),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(Icons.access_time, color: AppColors.primaryBlue, size: 16),
              const SizedBox(width: 8),
              Text(
                'Travel Time: ~ 15 min.',
                style: AppTextStyles.bodySmallCaption.copyWith(
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // زر التوجيه النهائي
        CustomButton(
          text: 'Find a Ride',
          backgroundColor: AppColors.primaryBlue,
          textColor: Colors.white,
          onPressed: onNext,
        ),
      ],
    );
  }
}
