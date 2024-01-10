import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:diary_bloc/core/constants/app_strings.dart';
import 'package:diary_bloc/ui/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widgets/on_board_first.dart';

@RoutePage()
class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.gitLogo, height: 28.h, width: 28.w),
                    const Gap(10),
                    Text(
                      AppStrings.gitProfile,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                PageView(
                  controller: _pageController,
                  children: const [
                    OnBoardFirst(
                      imgAssets: AppAssets.onBoard1,
                      title: AppStrings.onBoardStr1,
                    ),
                    OnBoardFirst(
                      imgAssets: AppAssets.onBoard2,
                      title: AppStrings.onBoardStr2,
                    ),
                    OnBoardFirst(
                      imgAssets: AppAssets.onBoard3,
                      title: AppStrings.onBoardStr3,
                    ),
                  ],
                ).expand(),
                SizedBox(height: 61.h),
                ElevatedButton(
                  onPressed: () =>
                      AutoRouter.of(context).push(const AuthScreenRoute()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width, 44.h)),
                  child: Text('Get started',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp)),
                ),
                SizedBox(height: 61.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: const WormEffect(
                          dotHeight: 12.0,
                          dotWidth: 12.0,
                          dotColor: Colors.grey,
                          activeDotColor: AppColors.primaryColor),
                    ),
                    Text(
                      'Next',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Gap(12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
