import 'package:flutter/material.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_colors.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';

class OnboardingBody extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;

  const OnboardingBody({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBlue,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Text(
            title,
            style: AppTextStyles.onboardingTitle,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: AppTextStyles.onboardingDescription,
          ),
          const Spacer(),
          Center(
            child: Image.asset(
              imageAsset,
              height: MediaQuery.of(context).size.height * 0.45,
              fit: BoxFit.fitWidth,width:double.infinity,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
