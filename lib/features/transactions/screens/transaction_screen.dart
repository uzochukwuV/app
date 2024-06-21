import 'package:apk/common/styles/clippers.dart';
import 'package:apk/common/widget/exchange_card.dart';
import 'package:apk/common/widget/virtual_card.dart';
import 'package:apk/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 300.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: CustomPath(),
                child: Container(
                  color: KColorsConstant.lightpurple,
                  height: 75.h,
                  width: 50.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              ClipPath(
                clipper: CustomPath2(),
                child: Container(
                  color: KColorsConstant.lightpurple,
                  height: 65.h,
                  width: 96.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              ClipPath(
                clipper: CustomPath2(),
                child: Container(
                  color: KColorsConstant.lightpurple,
                  height: 50.h,
                  width: 96.w,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(top: 110.h, left: 24.w),
          // color: KColorsConstant.bgblack,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment card",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    height: 194.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        VirtualCard(),
                        VirtualCard(),
                      ],
                    )),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Payment card",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    height: 80.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ExchangeCard(),
                        ExchangeCard(),
                        ExchangeCard()
                      ],
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
