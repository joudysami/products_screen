import 'package:flutter/material.dart';
import 'package:products/core/constant/app_colors.dart';
import 'package:products/feature/auth/ui/widget/custom_fav_icon.dart';
import 'package:products/feature/auth/ui/widget/custom_floatingbutton.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.price,
  });

  final String image;
  final String title;
  final String description;
  final double rating;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.babyblue,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: CustomFavIcon(),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkblue,
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: AppColors.darkblue,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      Text(
                        "EGP",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.darkblue,
                        ),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        "$price",
                        
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.darkblue,
                        ),
                      ),

                      SizedBox(width: 40),

                      Text(
                        "2000",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: AppColors.babyblue,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.darkblue,
                        ),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        "($rating)",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.darkblue,
                        ),
                      ),

                      const SizedBox(width: 3),

                      Icon(
                        Icons.star,
                        color: AppColors.yellow,
                        size: 20,
                      ),

                      const Spacer(),

                      CustomFloatingbutton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}