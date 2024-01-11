part of 'common_widgets_import.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.titleName,
    this.iconData,
    required this.onPressed,
    this.color,
  });

  final String titleName;
  final IconData? iconData;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.r),
        ),
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(titleName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp)),
          Gap(12.w),
          Icon(
            iconData,
            color: color,
          )
          // const Icon(FluentIcons.arrow_right_16_regular, color: Colors.white),
        ],
      ),
    );
  }
}
