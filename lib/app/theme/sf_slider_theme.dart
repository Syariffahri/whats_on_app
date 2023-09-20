import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';

import '../constants/app_color.dart';

SfSliderThemeData sfSliderThemeData() {
  return SfSliderThemeData(
    thumbStrokeWidth: 4,
    thumbStrokeColor: CustomColors.primary,
    thumbColor: Colors.white,
    inactiveTrackColor: Colors.grey[200],
    tooltipTextStyle: AppTextTheme.textTheme.titleSmall!.copyWith(
      color: Colors.white,
    ),
  );
}
