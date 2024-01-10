import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:diary_bloc/ui/common_widgets/common_widgets_import.dart';
import 'package:diary_bloc/ui/routes/app_router.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 18.h),
              Center(
                child: Image.asset(
                  AppAssets.groupLogo,
                  height: 42.h,
                  width: 139.w,
                ),
              ),
              SizedBox(height: 100.h),
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.r),
                      topRight: Radius.circular(36.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      Text(
                        'Login',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primaryColor),
                      ),
                      SizedBox(height: 48.h),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Email'),
                      ),
                      SizedBox(height: 10.h),
                      const VxTextField(
                        hint: 'github.com/Mingaleev-D@mobile_dev',
                        fillColor: Colors.transparent,
                        borderColor: AppColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(FluentIcons.mail_16_regular),
                      ),
                      SizedBox(height: 24.h),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Password'),
                      ),
                      SizedBox(height: 10.h),
                      const VxTextField(
                        isPassword: true,
                        obscureText: true,
                        fillColor: Colors.transparent,
                        borderColor: AppColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(FluentIcons.password_16_regular),
                      ),
                      40.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 210.w,
                            child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              value: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              title: 'Remember me'.text.size(14.sp).make(),
                              onChanged: (value) {},
                            ),
                          ),
                          'Forgot Password'.text.size(14.sp).make(),
                        ],
                      ),
                      40.h.heightBox,
                      PrimaryButton(
                        titleName: 'Login',
                        onPressed: () {},
                      ),
                      20.h.heightBox,
                      'Don\'t have an account '
                          .richText
                          .size(14.sp)
                          .semiBold
                          .color(AppColors.primaryColor)
                          .withTextSpanChildren([
                        TextSpan(
                            text: 'Sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => AutoRouter.of(context)
                                  .push(const RegisterScreenRoute()),
                            style: const TextStyle(fontWeight: FontWeight.w700))
                      ]).makeCentered(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
