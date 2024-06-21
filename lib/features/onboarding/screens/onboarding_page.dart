import 'package:apk/features/transactions/screens/transaction_page.dart';
import 'package:apk/utils/constants/colors.dart';
import 'package:apk/utils/constants/images.dart';
import 'package:apk/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              KImageConstant.onboardingImage,
              width: 320.w,
              height: 375.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 90.h,
            ),
            Center(
              child: SizedBox(
                width: 294.w,
                child: Text(
                  KTextConstant.onboardingTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle().copyWith(
                    fontSize: 42.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => TransactionPage());
                },
                child: Text("GET STARTED"),
                style: ButtonStyle().copyWith(
                  fixedSize: MaterialStatePropertyAll(Size(342.w, 44.h)),
                )),
            SizedBox(
              height: 32.h,
            ),
            RichText(
                text: TextSpan(
                    text: "Already have an account?",
                    style: TextStyle().copyWith(
                        fontWeight: FontWeight.w600,
                        color: Get.isDarkMode ? Colors.white : Colors.black),
                    children: [
                  TextSpan(
                      text: " Log in",
                      style: TextStyle()
                          .copyWith(color: KColorsConstant.primaryColor))
                ]))
          ],
        ),
      ),
    );
  }
}
