import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_bottom.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/car_type.dart';
import '../../../../core/theme/app_colors.dart';

import '../../../../core/widgets/custom_container.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';


class Step1OfferFare extends StatelessWidget {
  final VoidCallback onNext;

  const Step1OfferFare({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const SizedBox(height: 8),
        CustomContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          borderRadius: 14,
          backgroundColor: Colors.grey.withOpacity(0.08),
          child: Row(
            children: [
              const Icon(Icons.circle, color: AppColors.primaryBlue, size: 12),
              const SizedBox(width: 14),
              Text(
                'Mohammed Ezz El-Arab St',
                style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        CustomContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          borderRadius: 14,
          backgroundColor: Colors.grey.withOpacity(0.08),
          child: Row(
            children: [
              const Icon(Icons.location_on, color: Colors.purple, size: 16),
              const SizedBox(width: 14),
              Text(
                'Ain Shams University',
                style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        CustomContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          borderRadius: 14,
          backgroundColor: Colors.grey.withOpacity(0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EGP 50',
                style: AppTextStyles.bodyMediumBold,
              ),
              Icon(Icons.monetization_on)
            ],
          ),
        ),
        const SizedBox(height: 8),

        CustomButton(
          text: 'Confirm',
          backgroundColor: AppColors.primaryBlue,
          textColor: Colors.white,
          onPressed: onNext,
        ),

      ],
    );
  }
}
