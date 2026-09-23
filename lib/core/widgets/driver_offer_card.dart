import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';
import '../theme/app_text_style.dart';

class DriverOfferCard extends StatelessWidget {
  final String name;
  final String rating;
  final String totalRides;
  final String carType;
  final String time;
  final String distance;
  final String fare;
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const DriverOfferCard({
    super.key,
    required this.name,
    required this.rating,
    required this.totalRides,
    required this.carType,
    required this.time,
    required this.distance,
    required this.fare,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(16),
      backgroundColor: Colors.white,
      borderRadius: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 20, backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.white)),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 15)),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 14),
                            const SizedBox(width: 2),
                            Text(rating, style: AppTextStyles.bodyMediumBold.copyWith(fontSize: 12)),
                            const SizedBox(width: 2),
                            Text(totalRides, style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 11)),
                          ],
                        ),
                        Text(carType, style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 12, fontWeight: FontWeight.w500)),
                        Text('$time ($distance)', style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(fare, style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.textDark)),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: onDecline,
                    child: Text('Decline', style: AppTextStyles.bodyMediumBold.copyWith(color: AppColors.primaryBlue)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    onPressed: onAccept,
                    child: const Text('Accept', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
