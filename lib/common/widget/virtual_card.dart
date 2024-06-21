import 'package:apk/common/styles/clippers.dart';
import 'package:apk/utils/constants/colors.dart';
import 'package:apk/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VirtualCard extends StatelessWidget {
  const VirtualCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      width: 312.w,
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
          color: KColorsConstant.mastercardColor,
          borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          ClipPath(
            clipper: VirtualCardCustomPath(),
            child: Container(
              height: 194.h,
              width: 312.w,
              color: KColorsConstant.mastercardDesignColor,
            ),
          ),
          Container(
            height: 194.h,
            width: 312.w,
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      KImageConstant.cardActiveIcon,
                      height: 40.h,
                    ),
                    Image.asset(
                      KImageConstant.mastercard,
                      height: 40.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    "Card Number",
                    style: TextStyle(
                        fontSize: 10, color: KColorsConstant.secondaryText),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 2),
                  child: Text(
                    "8754 7896 8976 9876",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: "mono",
                        color: KColorsConstant.secondaryText,
                        letterSpacing: .5.sp),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cardholder name",
                            style: TextStyle(
                                fontSize: 10,
                                color: KColorsConstant.secondaryText),
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                                fontSize: 16,
                                color: KColorsConstant.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Expiration",
                            style: TextStyle(
                                fontSize: 10,
                                color: KColorsConstant.secondaryText),
                          ),
                          Text(
                            "06/02",
                            style: TextStyle(
                                fontSize: 16,
                                color: KColorsConstant.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
