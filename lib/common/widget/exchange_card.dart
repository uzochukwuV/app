import 'package:apk/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExchangeCard extends StatelessWidget {
  const ExchangeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 160.w,
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Get.isDarkMode
            ? KColorsConstant.primaryAccentdark
            : KColorsConstant.primaryAccent,
      ),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Get.isDarkMode
                  ? KColorsConstant.black
                  : KColorsConstant.white,
            ),
            alignment: Alignment.center,
            child: Text(
              "EUD",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$0.8",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "0.03 (.5%)",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 11.sp),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Icon(
                    Icons.arrow_outward,
                    size: 14,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
