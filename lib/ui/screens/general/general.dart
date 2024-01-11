import 'package:auto_route/annotations.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:diary_bloc/core/constants/app_colors.dart';
import 'package:diary_bloc/ui/screens/category/gategory_screen.dart';
import 'package:diary_bloc/ui/screens/home/home_screen.dart';
import 'package:diary_bloc/ui/screens/screens_import.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  int visit = 0;

  @override
  Widget build(BuildContext context) {
    const List<TabItem> items = [
      TabItem(
        icon: FluentIcons.building_home_16_regular,
        // title: 'Home',
      ),
      TabItem(
        icon: FluentIcons.tag_16_regular,
        //  title: 'Shop',
      ),
      TabItem(
        icon: FluentIcons.add_16_regular,
        // title: 'Wishlist',
      ),
      TabItem(
        icon: FluentIcons.fluid_16_filled,
        //  title: 'Cart',
      ),
      TabItem(
        icon: FluentIcons.person_12_regular,
        //  title: 'profile',
      ),
    ];

    List<Widget> _screens = [
      HomeScreen(),
      GategoryScreen(),
      Scaffold(
        body: Center(
          child: Text('add'),
        ),
      ),
      TagsScreen(),
    ];
    return Scaffold(
      body: _screens.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: Colors.white,
        color: AppColors.primaryColor.withOpacity(0.3),
        colorSelected: AppColors.primaryColor,
        indexSelected: visit,
        highlightStyle: const HighlightStyle(
          isHexagon: true,
        ),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
