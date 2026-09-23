import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_bottom.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/driver_screen_base_layout.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/widgets/custom_item_row.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/theme/app_text_style.dart';
import 'package:go_router/go_router.dart';


class DriverStartTripScreen extends StatelessWidget {
  const DriverStartTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DriverBaseLayout(
      bottomSheetContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomItemRow(),
          const SizedBox(height: 12),
          Text('EGP 30 - 2.1KM • 5 Min', style: AppTextStyles.bodyMediumBold.copyWith(color: AppColors.textDark, fontSize: 13)),
          const SizedBox(height: 16),
          CustomContainer(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            borderRadius: 12,
            backgroundColor: AppColors.primaryBlue.withOpacity(0.08),
            child: Row(
              children: [
                const Icon(Icons.circle, color: AppColors.primaryBlue, size: 12),
                const SizedBox(width: 10),
                Text(
                  'Pickup time: ~ 10:00 min.',
                  style: AppTextStyles.bodyMediumBold.copyWith(color: AppColors.primaryBlue, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Swipe to start your trip',
            backgroundColor: AppColors.primaryBlue,
            textColor: Colors.white,
            onPressed: () {
              context.go(AppRouter.kDriverHome);
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

