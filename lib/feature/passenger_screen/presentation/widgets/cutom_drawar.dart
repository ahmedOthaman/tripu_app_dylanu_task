import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/routes/app_routes.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';


import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_list_tile.dart';


class CutomDrawar extends StatelessWidget {
  const CutomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // هيدر القائمة الجانبية المطور المكون من Row يحتوي على (الصورة، النصوص، الأيقونة)
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 60, bottom: 20, left: 16, right: 16),
          decoration: const BoxDecoration(
            color: AppColors.textLight, // الخلفية الزرقاء الثابتة
          ),
          child: Row(
            children: [
              // 1. الصورة الشخصية
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 35, color: AppColors.primaryBlue),
              ),
              const SizedBox(width: 5),
              // 2. العمود الذي يحتوي على الاسم والتقييم
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Mustafa',
                      style: AppTextStyles.bodyMediumBold
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '★ 4.8 (130 Trips)',
                      style: AppTextStyles.bodySmallCaption.copyWith(
                        color: Colors.grey.shade700
                      )

                    ),
                  ],
                ),
              ),

              // 3. الأيقونة الجانبية الثالثة (مثلاً أيقونة السهم أو الإعدادات حسب Figma)
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
                onPressed: () {
                  // الانتقال لصفحة تعديل الحساب أو الملف الشخصي
                },
              ),
            ],
          ),
        ),

        CustomListTile(
          icon: Icons.history,
          title: 'Your Rides',
          onTap: () {
            context.pop(); // لإغلاق الـ Drawer أولاً
            context.go(AppRouter.kDriverHome);
          },
        ),
        CustomListTile(
          icon: Icons.account_balance_wallet,
          title: 'Wallet',
          onTap: () {

            context.go(AppRouter.kWallet);
          },
        ),
        CustomListTile(
          icon: Icons.help_outline,
          title: 'Help & Support',
          onTap: () {},
        ),
        CustomListTile(
          icon: Icons.settings,
          title: 'Settings',
          onTap: () {},
        ),
        CustomListTile(
          icon: Icons.logout,
          title: 'Logout',
          titleColor: Colors.red,
          iconColor: Colors.red,
          onTap: () {},
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
