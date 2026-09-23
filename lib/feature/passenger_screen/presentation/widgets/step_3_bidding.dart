import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/routes/app_routes.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/custom_cacel_row.dart';
import '../../../../core/theme/app_colors.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/core/widgets/custom_bottom.dart';

class Step3Bidding extends StatefulWidget {
  final VoidCallback onNext;
  final VoidCallback onCancel;

  const Step3Bidding({super.key, required this.onNext, required this.onCancel});

  @override
  State<Step3Bidding> createState() => _Step3BiddingState();
}

class _Step3BiddingState extends State<Step3Bidding> {
  int _fare = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(
                'No drivers available...?',
                style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'Increase your fare for a quicker match.',
                style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 14, color: AppColors.textDark),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () => setState(() => _fare = _fare > 5 ? _fare - 5 : _fare),
                child: const Text('-5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),

            // السعر الكبير المعروض بالمنتصف
            Text(
              '$_fare EGP',
              style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textDark),
            ),

            // زر زائد 5 الأزرق
            SizedBox(
              width: 50,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () => setState(() => _fare += 5),
                child: const Text('+5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        CustomButton(
          text: 'Raise fair',
          backgroundColor: AppColors.primaryBlue,
          textColor: Colors.white,
          onPressed: (){
            GoRouter.of(context).push(AppRouter.kDriverOffersScreen);
          },
        ),
        const SizedBox(height: 10),
        CustomCancelRow(),

      ],
    );
  }
}

