import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

Widget customSfSlider({
  required dynamic sliderValue,
  required void Function(dynamic)? onChanged,
}) {
  return SfSlider(
    min: 0.0,
    max: 100.0,
    value: sliderValue,
    interval: 20,
    enableTooltip: true,
    minorTicksPerInterval: 1,
    thumbShape: const SfThumbShape(),
    tooltipTextFormatterCallback: (actualValue, formattedText) {
      return '${actualValue.toInt()}KM';
    },
    onChanged: onChanged,
  );
}
