import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/driver_screen_base_layout.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/widgets/custom_requests_list.dart';

import '../../../core/routes/app_routes.dart';


class DriverWaitingScreen extends StatelessWidget {
  const DriverWaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DriverBaseLayout(
          bottomSheetContent: DriverRequestTile(
            name: 'Mostafa',
            rating: '4.8',
            trips: '130',
            location: '6th October City',
            description: 'مدخل الشباب 70 متر مجاورة ١',
            fare: 'EGP 30 - 2.1KM',
            time: '5 Min',
            distance: '750 m',
            onTap: () {

              context.push(AppRouter.kDriverStartTrip);
            },
          ),

        ),
        const SizedBox(height: 16),

        Positioned.fill(
          bottom: MediaQuery.of(context).size.height * 0.21,
          child: Material(
            color: Colors.transparent,
            child: Container(
              color: Colors.black.withOpacity(0.75),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Offering your fare',
                    style: AppTextStyles.onboardingTitle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '59 EGP',
                    style: AppTextStyles.onboardingTitle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Waiting for the replay',
                    style: AppTextStyles.onboardingTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

