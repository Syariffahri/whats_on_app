import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../app/constants/app_color.dart';
import '../../app/theme/text_theme.dart';

Widget eventContainer({
  required String image,
  required String title,
  required String date,
  required String location,
  required String price,
  required String imageTag,
  required void Function()? onTap,
}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      highlightColor: Colors.grey[100],
      child: Ink(
        width: Get.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: CustomColors.greyBoldColor.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0.0, 2.0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Hero(
                    tag: imageTag,
                    child: Container(
                      width: Get.width,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        date,
                        style: AppTextTheme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: AppTextTheme.textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(location),
                  const Icon(IconlyLight.arrow_right_2),
                ],
              ),
            ),
            price.isEmpty
                ? Text(
                    'FREE',
                    style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                      color: CustomColors.freeColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : Text(
                    price,
                    style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ],
        ),
      ),
    ),
  );
}
