import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/custom_bottom.dart';
import 'driver_screen_base_layout.dart';

class DriverKeypadScreen extends StatefulWidget {
  const DriverKeypadScreen({super.key});

  @override
  State<DriverKeypadScreen> createState() => _DriverKeypadScreenState();
}

class _DriverKeypadScreenState extends State<DriverKeypadScreen> {
  String _enteredAmount = '5';

  void _onKeyPress(String value) {
    setState(() {
      if (value == '⌫') {
        if (_enteredAmount.isNotEmpty) {
          _enteredAmount = _enteredAmount.substring(0, _enteredAmount.length - 1);
        }
      } else {
        if (_enteredAmount.length < 4) {
          _enteredAmount += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return DriverBaseLayout(
      bottomSheetContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Offer your fare',
            style: AppTextStyles.bodySmallCaption.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            '$_enteredAmount EGP',
            style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 34, fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
          ),
          const SizedBox(height: 16),

          SizedBox(
            height: screenHeight * 0.24,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2.4,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                String buttonText = '';
                if (index < 9) buttonText = '${index + 1}';
                if (index == 9) buttonText = '.';
                if (index == 10) buttonText = '0';
                if (index == 11) buttonText = '⌫';

                return TextButton(
                  onPressed: () => _onKeyPress(buttonText),
                  child: Text(
                    buttonText,
                    style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 22, color: AppColors.textDark),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 14),
          CustomButton(
            text: 'Offer',
            backgroundColor: AppColors.primaryBlue,
            textColor: Colors.white,
            onPressed: () {

              context.push(AppRouter.kDriverWaiting);
            },
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
