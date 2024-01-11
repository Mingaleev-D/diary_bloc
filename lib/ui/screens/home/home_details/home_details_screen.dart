import 'package:auto_route/annotations.dart';
import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: 'Make Friend Who Force You to Win'.text.ellipsis.make(),
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset(AppAssets.imageImage1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  10.h.heightBox,
                  'Make Friend Who Force You to Win'.text.bold.xl2.make(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(FluentIcons.eye_12_regular),
                      8.w.widthBox,
                      '147 views'.text.make(),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FluentIcons.thumb_like_16_filled,
                          color: Colors.greenAccent,
                        ),
                      ),
                      '147'.text.make(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FluentIcons.thumb_dislike_16_filled,
                          color: Colors.redAccent,
                        ),
                      ),
                      '147'.text.make(),
                    ],
                  ),
                  10.h.heightBox,
                  'Life events, such as moving to another neighbourhood, starting a job or having a baby, can isolate us from our former support group and make forging new friendships more important than ever. Participate in work social functions, join a hobby group or volunteer for charity work. Friendships need love, time, attention and trust if they are to survive.'
                      .text
                      .make(),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
