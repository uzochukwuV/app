import 'package:apk/common/styles/boxshadow.dart';
import 'package:apk/data/repositories/currency_repository.dart';
import 'package:apk/data/services/currency_services.dart';
import 'package:apk/features/crypto/screen/page.dart';
import 'package:apk/features/onboarding/screens/onboarding_page.dart';
import 'package:apk/features/profile/screens/page.dart';
import 'package:apk/features/transactions/controller/transaction_controller.dart';
import 'package:apk/features/transactions/screens/transaction_screen.dart';
import 'package:apk/utils/constants/colors.dart';
import 'package:apk/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({Key? key}) : super(key: key);
  final CurrencyRepository _repository = CurrencyApiService();
  final List<Widget> screens = [
    TransactionScreen(),
    CryptoPage(),
    Container(),
    Container(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    final TransactionController value = Get.put(TransactionController());

    print(value.index);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        child: GetBuilder(
          init: TransactionController(),
          builder: (controller) => screens[controller.index.toInt()],
        ),
      ),
      bottomNavigationBar: GetBuilder<TransactionController>(
          init: TransactionController(),
          builder: (controller) {
            return NavigationBar(
              selectedIndex: controller.index.toInt(),
              onDestinationSelected: (value) =>
                  {controller.onChange(value), controller.update()},
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.area_chart_outlined),
                  label: "Transactions",
                  tooltip: "Transactions",
                  selectedIcon: Icon(
                    Icons.area_chart_outlined,
                    color: KColorsConstant.primaryColor,
                  ),
                ),
                const NavigationDestination(
                  icon: Icon(Icons.feed_outlined),
                  label: "Feeds",
                  tooltip: "Feeds",
                  selectedIcon: Icon(
                    Icons.feed_outlined,
                    color: KColorsConstant.primaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: InkWell(
                      splashColor: KColorsConstant.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      overlayColor:
                          const MaterialStatePropertyAll(KColorsConstant.white),
                      onTap: () {
                        controller.onChange(2);
                        controller.update();
                      },
                      child: Tooltip(
                        message: "home",
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .navigationBarTheme
                                  .backgroundColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                ...KBoxShadow.shadow_sm,
                                BoxShadow(
                                    color: Colors.white24,
                                    offset: Offset(1, 0),
                                    blurRadius: 3,
                                    spreadRadius: 3)
                              ]),
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            color: controller.index.toInt() == 2
                                ? KColorsConstant.primaryColor
                                : Get.isDarkMode
                                    ? KColorsConstant.white
                                    : KColorsConstant.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: NavigationDestination(
                  //   icon: Icon(Icons.wallet),
                  //   label: "Wallet",
                  //   tooltip: "Wallet",
                  // ),
                ),
                const NavigationDestination(
                  icon: Icon(Icons.account_balance_wallet_rounded),
                  label: "Wallet",
                  tooltip: "Wallet",
                  selectedIcon: Icon(
                    Icons.account_balance_wallet_rounded,
                    color: KColorsConstant.primaryColor,
                  ),
                ),
                const NavigationDestination(
                  icon: Icon(Icons.person_3_rounded),
                  label: "Profile",
                  tooltip: "Profile",
                  selectedIcon: Icon(
                    Icons.person_3_rounded,
                    color: KColorsConstant.primaryColor,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
