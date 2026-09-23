import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';

class DriverRequestTile extends StatelessWidget {
  final String name;
  final String rating;
  final String trips;
  final String location;
  final String description;
  final String fare;
  final String distance;
  final String time;
  final VoidCallback onTap;

  const DriverRequestTile({
    super.key,
    required this.name,
    required this.rating,
    required this.trips,
    required this.location,
    required this.description,
    required this.fare,
    required this.distance,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomContainer(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        borderRadius: 16,
        backgroundColor: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. الجزء الأيسر: صورة المستخدم والتقييم [image_brI1r2.png]
            Column(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  name,
                  style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 13),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 12),
                    const SizedBox(width: 2),
                    Text(
                      '$rating (180$trips)',
                      style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: AppColors.primaryBlue, size: 16),
                      const SizedBox(width: 6),
                      Text(
                        location,
                        style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      description,
                      style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 13, color: AppColors.textDark),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      '$fare - $distance \n$time',
                      style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 13, color: AppColors.textDark, height: 1.3),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
