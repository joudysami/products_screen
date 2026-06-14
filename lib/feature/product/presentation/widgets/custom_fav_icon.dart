import 'package:flutter/material.dart';
import 'package:products/core/constant/app_colors.dart';

class CustomFavIcon extends StatefulWidget {
  const CustomFavIcon({
    super.key,
  });



  @override
  State<CustomFavIcon> createState() => _CustomFavIconState();
}

class _CustomFavIconState extends State<CustomFavIcon> {
   bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            isSaved = !isSaved;
          });
        },
        icon: Icon(
        isSaved ? Icons.favorite : Icons.favorite_border,
        size: 18,
        color: AppColors.blue,
       
      ),),
    );
  }
}