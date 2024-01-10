part of 'common_widgets_import.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {super.key, required this.titleName, required this.onPressed});

  final String titleName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
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
          const Icon(FluentIcons.wifi_1_20_filled, color: Colors.white),
        ],
      ),
    );
  }
}
