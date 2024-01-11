import 'package:auto_route/annotations.dart';
import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Image.asset(AppAssets.imageImage1).cornerRadius(20),
            12.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Latest posts'.text.size(16).make(),
                'See all'.text.size(16).make(),
              ],
            ),
            10.h.heightBox,
            ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(height: 12.h),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Image.asset(
                      AppAssets.imageImage1,
                      height: 100.h,
                      width: 150.w,
                      fit: BoxFit.cover,
                    ).cornerRadius(20),
                    10.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Space in Design Systems'
                            .text
                            .size(16)
                            .maxLines(2)
                            .bold
                            .make(),
                        6.h.heightBox,
                        Row(
                          children: [
                            const Icon(FluentIcons.clock_16_regular),
                            '5 months ago'.text.size(16).make(),
                          ],
                        ),
                        6.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            '59 views'.text.size(16).make(),
                            const Icon(FluentIcons.bookmark_16_regular),
                          ],
                        ),
                      ],
                    ).expand(),
                  ],
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
