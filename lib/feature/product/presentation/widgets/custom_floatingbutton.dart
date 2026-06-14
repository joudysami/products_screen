import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products/core/constant/app_colors.dart';

class CustomFloatingbutton extends StatelessWidget {
  const CustomFloatingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    width: 30.w,
    height: 30.h,
    decoration: BoxDecoration(
      color: AppColors.blue,
      borderRadius: BorderRadius.circular(20.r),
    ),
    child:  Icon(
      Icons.add,
      color: Colors.white,
      size: 30.sp,
    ),
  );
  }
}
