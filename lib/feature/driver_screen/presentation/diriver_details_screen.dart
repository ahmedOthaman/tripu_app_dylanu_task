import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/routes/app_routes.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/driver_screen_base_layout.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/widgets/custom_item_row.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/widgets/custom_requests_list.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/custom_bottom.dart';


class DriverDetailScreen extends StatelessWidget {
  const DriverDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DriverBaseLayout(
      bottomSheetContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DriverRequestTile(
            name: 'Mostafa',
            rating: '4.8',
            trips: '130',
            location: '6th October City',
            description: 'مدخل الشباب 70 متر مجاورة ١',
            fare: 'EGP 30 - 2.1KM',
            time: '5 Min',
            onTap: () {
              context.push(AppRouter.kDriverDetail);
            },
            distance: '',
          ),
          const SizedBox(height: 16),

          CustomButton(
            text: 'Accept for 50 EGP',
            backgroundColor: AppColors.primaryBlue,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: 12),

          Text('Offer your fare', style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 12, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFareOption('55'),
              _buildFareOption('60'),
              _buildFareOption('65'),
              InkWell(
                onTap: () {
                  context.push(AppRouter.kDriverKeypadScreen);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(color: AppColors.primaryBlue, borderRadius: BorderRadius.circular(8)),
                  child: const Icon(Icons.edit, color: Colors.white, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          CustomButton(
            text: 'Skip',
            backgroundColor: Colors.grey.withOpacity(0.15),
            textColor: AppColors.textDark,
            onPressed: () {
              context.pop();
            },
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }

  Widget _buildFareOption(String amount) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
      child: Text(amount, style: AppTextStyles.bodyMediumBold.copyWith(color: AppColors.textDark)),
    );
  }
}


