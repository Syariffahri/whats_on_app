import 'package:flutter/material.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';

import '../constants/app_color.dart';

class TextButtonTheme {
  static ButtonStyle textButton = TextButton.styleFrom(
    backgroundColor: CustomColors.btnColor,
    padding: const EdgeInsets.all(15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    textStyle: AppTextTheme.textTheme.bodyMedium,
  );
}
