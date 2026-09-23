import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/driver-offers_screen.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/cutom_drawar.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/step_0_choose_car.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/step_1_offer_fare.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/step_2_review_ride.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/step_3_bidding.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';

class MapHomeScreen extends StatefulWidget {
  const MapHomeScreen({super.key});

  @override
  State<MapHomeScreen> createState() => _MapHomeScreenState();
}

class _MapHomeScreenState extends State<MapHomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _selectedCategory = 'Ride';
  int _currentStep = 0; // يمثل خطوات الرحلة من 0 إلى 3 طبقاً للفيجما

  String _getMapAsset() {
    return 'assets/images/Img_car1.png';
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(backgroundColor: Colors.white, child: CutomDrawar()),
      bottomSheet: BottomSheet(
        onClosing: () {},
        enableDrag: false,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return SizedBox(
            height: screenHeight * 0.5, // 💡 إجبار البوتم شيت على أخذ 50% من ارتفاع الشاشة فقط
            child: CustomContainer(
              padding: const EdgeInsets.only(top: 14, left: 24, right: 24, bottom: 20),
              borderRadius: 24,
              backgroundColor: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // مقبض السحب العلوي الصغير
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // 🔀 تبديل خطوات الراكب بذكاء وأمان تام داخل الـ 50% المحكومة
                  Expanded(
                    child: IndexedStack(
                      index: _currentStep,
                      children: [
                        Step0ChooseCar(
                          selectedCategory: _selectedCategory,
                          onCategoryChanged: (cat) => setState(() => _selectedCategory = cat),
                          onNext: () => setState(() => _currentStep = 1),
                        ),
                        Step1OfferFare(
                          onNext: () => setState(() => _currentStep = 2),
                        ),
                        Step2ReviewRide(
                          onNext: () => setState(() => _currentStep = 3),
                        ),
                        Step3Bidding(
                          onNext: () {
                            // 💡 التعديل المظبوط: الانتقال المباشر لشاشة عروض السائقين المستقلة [image_RrLqsD.png]
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const DriverOffersScreen()),
                            );
                          },
                          onCancel: () => setState(() => _currentStep = 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      body: Stack(
        children: [
          Image.asset(
            _getMapAsset(),
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.menu, color: AppColors.textDark),
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
