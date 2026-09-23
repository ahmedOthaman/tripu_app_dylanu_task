import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // 1. ستايل العناوين الضخمة - شاشات الـ Onboarding
  static const TextStyle onboardingTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    height: 1.2,
  );

  // 2. ستايل نصوص الوصف الطويل - شاشات الـ Onboarding
  static final TextStyle onboardingDescription = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white.withOpacity(0.8),
    height: 1.5,
  );
  static final TextStyle onBottomNext = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade800,
    height: 1.5,
  );
  // 3. ستايل العناوين الرئيسية باللون الداكن - للقوائم، والـ Bottom Sheet، والمحفظة (مثل: "Wallet", "Offering your fare", "Mustafa")
  static const TextStyle mainHeaderDark = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  // 4. ستايل النصوص المتوسطة / فرعية - أسماء السيارات، تفاصيل الرصيد، والأسعار (مثل: "55 EGP", "Waiting for the reply", "EGP 0.00")
  static const TextStyle bodyMediumBold = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  // 5. ستايل النصوص الصغيرة / الرمادية الباهتة - لتفاصيل القائمة الجانبية أو التوضيحات (مثل: "4.8 (130 Trips)", "Cash", "Skip")
  static const TextStyle bodySmallCaption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
