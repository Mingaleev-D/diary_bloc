import 'package:diary_bloc/core/constants/app_assets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/app_colors.dart';

class AddPostsScreen extends StatelessWidget {
  const AddPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: 'Add tags'.text.make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(FluentIcons.checkbox_checked_16_regular))
        ],
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            20.h.heightBox,
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset(
                      AppAssets.placeholder,
                      width: double.infinity,
                      height: 200.h,
                      fit: BoxFit.fitWidth,
                    ).cornerRadius(10),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FluentIcons.camera_16_regular,
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
                20.h.heightBox,
                const VxTextField(
                  fillColor: Colors.transparent,
                  borderColor: AppColors.primaryColor,
                  borderType: VxTextFieldBorderType.roundLine,
                  borderRadius: 10,
                  hint: 'Title',
                ),
                20.h.heightBox,
                const VxTextField(
                  fillColor: Colors.transparent,
                  borderColor: AppColors.primaryColor,
                  borderType: VxTextFieldBorderType.roundLine,
                  borderRadius: 10,
                  hint: 'Description',
                ),
                20.h.heightBox,
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Tags'.text.bold.make(),
                      const Icon(FluentIcons.arrow_circle_right_16_regular)
                    ],
                  ),
                ),
                20.h.heightBox,
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Categories'.text.bold.make(),
                      const Icon(FluentIcons.arrow_circle_right_16_regular)
                    ],
                  ),
                ),
                20.h.heightBox,
                QuillToolbar.simple(
                  configurations: QuillSimpleToolbarConfigurations(
                    controller: _controller,
                    sharedConfigurations: const QuillSharedConfigurations(
                      locale: Locale('en'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 400.h,
                  child: QuillEditor.basic(
                    configurations: QuillEditorConfigurations(
                      controller: _controller,
                      readOnly: false,
                      // sharedConfigurations: const QuillSharedConfigurations(
                      //   locale: Locale('ru'),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            40.h.heightBox,
          ]),
    );
  }
}
