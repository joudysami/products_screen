import 'package:flutter/material.dart';
import 'package:products/core/constant/app_colors.dart';

class CustomFloatingbutton extends StatelessWidget {
  const CustomFloatingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      color: AppColors.blue,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Icon(
      Icons.add,
      color: Colors.white,
      size: 30,
    ),
  );
  }
}
