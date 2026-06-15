import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products/core/constant/app_colors.dart';
import 'package:products/feature/product/presentation/widgets/custom_fav_icon.dart';
import 'package:products/feature/product/presentation/widgets/custom_floatingbutton.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.price, required this.discount,
  });

  final String image;
  final String title;
  final String description;
  final double rating;
  final double price;
  final double discount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.babyblue, width: 2.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  child: Image.network(
                    image,
                    width: double.infinity,
                    height: 80.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(top: 8.h, right: 8.w, child: CustomFavIcon()),
              ],
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkblue,
                      ),
                    ),
              
                    SizedBox(height: 2.h),
              
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColors.darkblue,
                      ),
                    ),
              
                    SizedBox(height: 6.h),
              
                    Row(
                      children: [
                        Text(
                          "EGP",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.darkblue,
                          ),
                        ),
              
                        SizedBox(width: 4.w),
              
                        Text(
                          "$price",
              
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.darkblue,
                          ),
                        ),
              
                        SizedBox(width: 40.w),
              
                        Text(
                        "$discount",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.babyblue,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
              
                    //SizedBox(height: 6.h),
              
                    Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.darkblue,
                          ),
                        ),
              
                        SizedBox(width: 4.w),
              
                        Text(
                          "($rating)",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColors.darkblue,
                          ),
                        ),
              
                        SizedBox(width: 3.w),
              
                        Icon(Icons.star, color: AppColors.yellow, size: 20.sp),
              
                        const Spacer(),
              
                        CustomFloatingbutton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
