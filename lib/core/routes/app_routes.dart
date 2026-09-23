import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/feature/driver_screen/presentation/driver_screen_base_layout.dart';
import 'package:tripu_app_dylanu_task/feature/passenger_screen/presentation/widgets/custom_cacel_row.dart';
import '../../feature/driver_screen/presentation/driver_start_trip.dart';
import '../../feature/driver_screen/presentation/diriver_details_screen.dart';
import '../../feature/driver_screen/presentation/dirver_item_widget.dart';
import '../../feature/driver_screen/presentation/driver_keypad_screen.dart';
import '../../feature/driver_screen/presentation/weaiting_screen.dart';
import '../../feature/onboaeding/presentation/on_board_screen.dart';
import '../../feature/passenger_screen/presentation/driver-offers_screen.dart';
import '../../feature/passenger_screen/presentation/home_screen.dart';
import '../../feature/wallet/presentation/wallet_screen.dart';

class AppRouter {

  static const String kOnboarding = '/';
  static const String kLogin = '/login';
  static const String kRegister = '/register';
  static const String kMapHomeScreen = '/MapHomeScreen';
  static const String kBiddingScreen='/BiddingScreen';
  static const String kWallet = '/wallet';
  static const String kDriverScreen = '/DriverScreen';
  static const String kDriverOffersScreen='/DriverOffersScreen';
  static const String kDriverHome = '/driverHome';
  static const String kDriverDetail = '/driverDetail';
  static const String kDriverKeypadScreen = '/DriverKeypadScreen';
  static const String kDriverWaiting = '/driverWaiting';
  static const String kDriverStartTrip = '/driverStartTrip';


  static final GoRouter router = GoRouter(
    initialLocation: kOnboarding,
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kMapHomeScreen,
        builder: (context, state) => const MapHomeScreen(),
      ),
      GoRoute(
        path: kWallet,
        builder: (context, state) => const WalletScreen(),
      ),
      GoRoute(
        path: kDriverScreen,
        builder: (context, state) => const DriverHomeScreen(),
      ),
      GoRoute(
        path: kDriverOffersScreen,
        builder: (context, state) => const DriverOffersScreen(),
      ),
      GoRoute(
        path: kDriverHome,
        builder: (context, state) => const DriverHomeScreen(),
      ),
      GoRoute(
        path: kDriverDetail,
        builder: (context, state) => const DriverDetailScreen(),
      ),
      GoRoute(
        path: kDriverWaiting,
        builder: (context, state) => const DriverWaitingScreen(),
      ),
      GoRoute(
        path: kDriverKeypadScreen,
        builder: (context, state) => const DriverKeypadScreen(),
      ),
      GoRoute(
        path: kDriverStartTrip,
        builder: (context, state) => const DriverStartTripScreen(),
      ),
    ],
  );
}
