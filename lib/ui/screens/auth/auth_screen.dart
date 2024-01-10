import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:diary_bloc/core/constants/app_strings.dart';
import 'package:diary_bloc/ui/common_widgets/common_widgets_import.dart';
import 'package:diary_bloc/ui/routes/app_router.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AppAssets.onBackGirl),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  AppStrings.authText,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28.sp,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 34.h),
                PrimaryButton(
                  titleName: 'Login',
                  iconData: FluentIcons.arrow_right_16_regular,
                  color: Colors.white,
                  onPressed: () =>
                      AutoRouter.of(context).push(const LoginScreenRoute()),
                ),
                SizedBox(height: 12.h),
                OutlineButton(
                  titleName: 'Register',
                  onPressed: () =>
                      AutoRouter.of(context).push(const RegisterScreenRoute()),
                ),
                Gap(200.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
