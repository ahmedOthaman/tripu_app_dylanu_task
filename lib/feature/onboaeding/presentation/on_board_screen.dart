import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';
import 'package:tripu_app_dylanu_task/feature/onboaeding/presentation/widgets/on_boarding_body.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/custom_bottom.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  int _currentIndex = 0;
  final int _totalPages = 3;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLastPage = _currentIndex == _totalPages - 1;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const [
              OnboardingBody(
                imageAsset: 'assets/images/Img_car1.png',
                title: 'Welcome to TRIPU',
                description: 'Need a quick ride or a car with a driver for hours or days? We’ve got you covered.',
              ),
              OnboardingBody(
                imageAsset: 'assets/images/Img_car2.png',
                title: 'Rent Cars with Drivers',
                description: 'Enjoy the convenience of renting a car with a professional driver for hours or days.',
              ),
              OnboardingBody(
                imageAsset: 'assets/images/Img_car3.png',
                title: 'Safe, Reliable, and Convenient',
                description: 'Professional Drivers, Well Maintained Cars and Easy Payments.',
              ),
            ],
          ),

          if (!isLastPage)
            Positioned(
              top: 82,
              right: 5,
              child: TextButton(
                onPressed: () {
                  pageController.jumpToPage(_totalPages - 1);
                },
                child: Text(
                  'Skip',
                  style: AppTextStyles.bodySmallCaption,
                ),
              ),
            ),
          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: isLastPage
                ?
            CustomButton(
              text: 'Sign Up / Log In',
              isSecondary: false,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kMapHomeScreen);
              },
            )
                :
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    _totalPages,
                        (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: 6),
                      height: 8,
                      width: _currentIndex == index ? 24 : 8,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? AppColors.dotColor
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    'Next',
                    style: AppTextStyles.onBottomNext,
                  ),
                ),
              ],
            ),

          ),
          Spacer(),
        ],
      ),
    );
  }
}
