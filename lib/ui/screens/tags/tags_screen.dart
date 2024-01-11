import 'package:auto_route/annotations.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/app_colors.dart';

@RoutePage()
class TagsScreen extends StatelessWidget {
  const TagsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: 'Tags'.text.size(16.sp).color(Colors.white).make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FluentIcons.add_16_regular,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.h);
        },
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: '${index + 1}'.text.size(16).make(),
              title: 'Tags'.text.size(16).make(),
              trailing: SizedBox(
                width: 100.w,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FluentIcons.pen_16_regular)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FluentIcons.delete_16_regular)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
