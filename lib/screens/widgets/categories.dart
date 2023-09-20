import 'package:flutter/material.dart';
import 'package:whats_on_app/app/constants/app_color.dart';

Widget categories({
  required String textIcon,
  required String title,
}) {
  return Container(
    margin: const EdgeInsets.only(right: 25),
    child: Column(
      children: [
        InkWell(
          onTap: () {},
          customBorder: const CircleBorder(),
          highlightColor: Colors.grey[100],
          child: Ink(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: CustomColors.greyBoldColor.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: const Offset(0.0, 2.0),
                ),
              ],
            ),
            child: Text(
              textIcon,
              style: const TextStyle(fontSize: 25), // buat icon aja
            ),
          ),
        ),
        const SizedBox(height: 9),
        Text(title),
      ],
    ),
  );
}
