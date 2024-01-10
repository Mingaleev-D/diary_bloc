import 'package:auto_route/annotations.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
