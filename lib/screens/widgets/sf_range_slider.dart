import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

Widget customRangeSfSlider({
  required dynamic dualValues,
  required void Function(SfRangeValues)? onChanged,
}) {
  return SfRangeSlider(
    min: 0.0,
    max: 1000.0,
    values: dualValues,
    interval: 20,
    enableTooltip: true,
    tooltipTextFormatterCallback: (actualValue, formattedText) {
      return '\$${actualValue.toInt()}';
    },
    minorTicksPerInterval: 1,
    thumbShape: const SfThumbShape(),
    onChanged: onChanged,
  );
}
