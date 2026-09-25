import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/custom_cacel_row.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/custom_bottom.dart';
import '../../../../core/widgets/custom_container.dart';
import '../../../core/widgets/driver_offer_card.dart';


class DriverOffersScreen extends StatelessWidget {
  const DriverOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomSheet: BottomSheet(
        onClosing: () {},
        enableDrag: false,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return CustomContainer(
            padding: const EdgeInsets.only(top: 14, left: 24, right: 24, bottom: 20),
            borderRadius: 24,
            backgroundColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3), borderRadius: BorderRadius.circular(2)),
                ),
                const SizedBox(height: 16),
              CustomCancelRow(),
                const SizedBox(height: 26),
            ]),
          );
        },
      ),

      body: Stack(
        children: [

          Image.asset(
            'assets/images/Img_car1.png',
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 100,
            left: 20,
            right: 20,
            bottom: screenHeight * 0.28,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: [
                DriverOfferCard(
                  name: 'Ahmed',
                  rating: '4.8',
                  totalRides: '(56 rides)',
                  carType: 'Toyota Yaris',
                  time: '5 Min',
                  distance: '750 m',
                  fare: '55 EGP',
                  onAccept: () {},
                  onDecline: () {},
                ),
                const SizedBox(height: 12),
                DriverOfferCard(
                  name: 'Ahmed',
                  rating: '4.9',
                  totalRides: '(68 rides)',
                  carType: 'Toyota Yaris',
                  time: '5 Min',
                  distance: '750 m',
                  fare: '50 EGP',
                  onAccept: () {

                  },
                  onDecline: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.textDark, size: 22),
                onPressed: () => context.pop,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

