import 'package:basiclearnbloc/common/widget/svg_image_render_widget.dart';
import 'package:basiclearnbloc/counter/model/bottom_navbar_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];

          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: buildNavItem(item, isSelected),
          );
        }),
      ),
    );
  }

  Widget buildNavItem(BottomNavbarModel model, bool isSelected) {
    return Column(
      children: [
        SvgImageRenderWidget(
          svgImagePath: isSelected ? model.activeImage : model.inactiveImage,
        ),
        4.verticalSpace,
        Text(
          model.label,
          style: TextStyle(color: isSelected ? Colors.blue : Colors.grey),
        ),
      ],
    );
  }
}
