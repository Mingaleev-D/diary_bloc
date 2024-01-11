import 'package:auto_route/annotations.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/app_assets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FluentIcons.arrow_exit_20_filled).pOnly(right: 10),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 400.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.r),
                  bottomRight: Radius.circular(40.r),
                )),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: const AssetImage(AppAssets.imageImage1),
                ),
                10.h.heightBox,
                'Mobile Developer'.text.white.semiBold.xl2.make(),
                'github.com/Mingaleev-D'.text.white.xl.make(),
                10.h.heightBox,
                'Dinar, is a software engineer who is more passionate about technology. His ambition towards technology is huge.'
                    .text
                    .white
                    .xl
                    .center
                    .ellipsis
                    .maxLines(4)
                    .make()
                    .pSymmetric(h: 20.h),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        '0'.text.white.xl3.bold.make(),
                        'Posts'.text.white.xl.make(),
                      ],
                    ),
                    Column(
                      children: [
                        '0'.text.white.xl3.bold.make(),
                        'Following'.text.white.xl.make(),
                      ],
                    ),
                    Column(
                      children: [
                        '0'.text.white.xl3.bold.make(),
                        'Followers'.text.white.xl.make(),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'My posts'.text.bold.xl.make(),
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          AppAssets.imageImage1,
                          height: 100.h,
                          width: 100.w,
                          fit: BoxFit.cover,
                        ).cornerRadius(10),
                        6.h.heightBox,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            'Make Friend Who Force You to Win'
                                .text
                                .medium
                                .ellipsis
                                .maxLines(3)
                                .make()
                                .expand(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  FluentIcons.more_vertical_16_regular),
                            )
                          ],
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
