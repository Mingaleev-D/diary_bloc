import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key, required this.imgAssets, required this.title});

  final String imgAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgAssets,
          height: 333.h,
          width: 333.w,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
