import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/widgets/custom_requests_list.dart';

import '../../../core/routes/app_routes.dart';
import 'driver_screen_base_layout.dart';

class DriverHomeScreen extends StatelessWidget {
  const DriverHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return DriverBaseLayout(
      bottomSheetContent: SizedBox(
        height: screenHeight * 0.4,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) => DriverRequestTile(
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
        ),
      ),
    );
  }
}
