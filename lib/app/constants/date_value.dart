import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getValueText(
  CalendarDatePicker2Type datePickerType,
  List<DateTime?> values,
) {
  values = values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
  var valueText = (values.isNotEmpty ? values[0] : null)
      .toString()
      .replaceAll('00:00:00.000', '');

  if (datePickerType == CalendarDatePicker2Type.multi) {
    valueText = values.isNotEmpty
        ? values
            .map((v) => v.toString().replaceAll('00:00:00.000', ''))
            .join(', ')
        : 'null';
  } else if (datePickerType == CalendarDatePicker2Type.range) {
    if (values.isNotEmpty) {
      final formatted = DateFormat.yMMMd().format(values[0]!);
      final formatted1 = DateFormat.yMMMd().format(values[1]!);
      final startDate = formatted.toString().replaceAll('00:00:00.000', '');
      final endDate = values.length > 1
          ? formatted1.toString().replaceAll('00:00:00.000', '')
          : 'null';
      valueText = '$startDate - $endDate';
    } else {
      return 'null';
    }
  }

  return valueText;
}
