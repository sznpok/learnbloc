import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgImageRenderWidget extends StatelessWidget {
  final String svgImagePath;
  final double? width;
  final double? height;
  final Color? svgColor;

  const SvgImageRenderWidget({
    super.key,
    required this.svgImagePath,
    this.width,
    this.height,
    this.svgColor,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgImagePath,
      width: width ?? 24.w,
      height: height ?? 24.w,
      theme: SvgTheme(currentColor: svgColor ?? Colors.blue),
    );
  }
}
