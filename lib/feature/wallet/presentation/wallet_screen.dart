import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripu_app_dylanu_task/core/routes/app_routes.dart';
import 'package:tripu_app_dylanu_task/core/theme/app_text_style.dart';
import 'package:tripu_app_dylanu_task/feature/wallet/presentation/widgets/payment_method_row.dart';
import 'package:tripu_app_dylanu_task/feature/wallet/presentation/widgets/transaction_tile.dart';
import 'package:tripu_app_dylanu_task/feature/wallet/presentation/widgets/wallet_balance_card.dart';
import '../../../../core/theme/app_colors.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.menu, color: AppColors.textDark, size: 28),
                onPressed: () =>GoRouter.of(context).push(AppRouter.kMapHomeScreen),
              ),
              const SizedBox(height: 20),
              Text(
                'Wallet',
                style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              WalletBalanceCard(balance: 'EGP 0.00', onAddFunds: () {}),
              const SizedBox(height: 24),
              Text(
                'PAYMENT METHOD',
                style: AppTextStyles.bodySmallCaption.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              PaymentMethodRow(icon: Icons.money, title: 'Cash', onChange: () {}),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.045,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlue,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'Add Payment Method',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),
              Text(
                'Transaction History',
                style: AppTextStyles.mainHeaderDark.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Text('Today', style: TextStyle(color: Colors.grey.shade400, fontSize: 13, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    const TransactionTile(
                      icon: Icons.account_balance_wallet,
                      iconBgColor: Colors.orange,
                      title: 'Fawry Transfer',
                      date: '06:00 PM',
                      amount: '+EGP 100',
                    ),
                    const TransactionTile(
                      icon: Icons.payment,
                      iconBgColor: AppColors.primaryBlue,
                      title: 'Card Deposit',
                      date: '03:00 AM',
                      amount: '+EGP 100',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text('Tuesday, 19 June', style: TextStyle(color: Colors.grey.shade400, fontSize: 13, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    const TransactionTile(
                      icon: Icons.account_balance_wallet,
                      iconBgColor: Colors.blue,
                      title: 'Paypal Transfer',
                      date: '06:00 PM',
                      amount: '+EGP 100',
                    ),
                    const TransactionTile(
                      icon: Icons.account_balance_wallet,
                      iconBgColor: Colors.orange,
                      title: 'Fawry Transfer',
                      date: '06:00 PM',
                      amount: '+EGP 100',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
