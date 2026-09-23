import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_container.dart';

class DriverBaseLayout extends StatefulWidget {
  final Widget bottomSheetContent;

  const DriverBaseLayout({
    super.key,
    required this.bottomSheetContent,
  });

  @override
  State<DriverBaseLayout> createState() => _DriverBaseLayoutState();
}

class _DriverBaseLayoutState extends State<DriverBaseLayout> {
  bool _isOnline = true;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
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
                widget.bottomSheetContent,
              ],
            ),
          );
        },
      ),
      // الـ body تم تطهيره بالكامل من أي Spacer أو Expanded تائه يسبب الـ ParentDataWidget Exception
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Img_car1.png',
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: AppColors.textDark),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4)],
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => _isOnline = false),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(color: !_isOnline ? Colors.grey.shade300 : Colors.transparent, borderRadius: BorderRadius.circular(20)),
                          child: Text('Offline', style: TextStyle(color: !_isOnline ? Colors.black : Colors.grey, fontWeight: FontWeight.bold, fontSize: 13)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => _isOnline = true),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(color: _isOnline ? AppColors.primaryBlue : Colors.transparent, borderRadius: BorderRadius.circular(20)),
                          child: Text('Online', style: TextStyle(color: _isOnline ? Colors.white : Colors.grey, fontWeight: FontWeight.bold, fontSize: 13)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 44),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
