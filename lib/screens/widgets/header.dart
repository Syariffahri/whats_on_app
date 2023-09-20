import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:whats_on_app/app/constants/date_value.dart';
import 'package:whats_on_app/app/theme/sf_rangeslider_theme.dart';
import 'package:whats_on_app/app/theme/sf_slider_theme.dart';
import 'package:whats_on_app/screens/widgets/sf_range_slider.dart';
import 'package:whats_on_app/screens/widgets/sf_slider.dart';
import '../../app/constants/app_color.dart';
import '../../app/theme/text_theme.dart';

final config = CalendarDatePicker2Config(
  calendarType: CalendarDatePicker2Type.range,
  selectedDayHighlightColor: CustomColors.primary,
  weekdayLabelTextStyle: AppTextTheme.textTheme.bodyLarge,
  controlsTextStyle: AppTextTheme.textTheme.bodyMedium,
);

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  double _value = 40.0;
  int results = 56;
  SfRangeValues _dualValues = const SfRangeValues(0.0, 250.0);

  List<DateTime?> _rangeDatePickerValueWithDefaultValue = [
    DateTime.now(),
    DateTime(2023, 9, 23),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Let's have fun!",
                style: AppTextTheme.textTheme.titleLarge,
              ),
              Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(IconlyLight.search),
                  ),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                          height: Get.height * 0.67,
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return ListView(
                                children: [
                                  Center(
                                    child: Container(
                                      width: Get.width * 0.15,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: CustomColors.dragColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Location',
                                    style: AppTextTheme.textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    initialValue:
                                        '8010, Edgewater Park, New Jersey',
                                    style: AppTextTheme.textTheme.titleSmall,
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Distance',
                                        style:
                                            AppTextTheme.textTheme.titleMedium,
                                      ),
                                      Text(
                                        '+${(_value).toInt()} KM',
                                        style:
                                            AppTextTheme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  SfSliderTheme(
                                    data: sfSliderThemeData(),
                                    child: customSfSlider(
                                      sliderValue: _value,
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          _value = value;
                                          if (_value > 60) {
                                            results = 128;
                                          } else {
                                            results = 56;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    'Price range',
                                    style: AppTextTheme.textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            '\$${(_dualValues.start).toInt()}',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            '\$${(_dualValues.end).toInt()}',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  SfRangeSliderTheme(
                                    data: sfRangeSliderTheme(),
                                    child: customRangeSfSlider(
                                      dualValues: _dualValues,
                                      onChanged: (SfRangeValues values) {
                                        setState(() {
                                          _dualValues = values;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Date',
                                    style: AppTextTheme.textTheme.titleMedium,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.dialog(
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Center(
                                            child: Material(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: CalendarDatePicker2(
                                                config: config,
                                                value:
                                                    _rangeDatePickerValueWithDefaultValue,
                                                onValueChanged: (dates) =>
                                                    setState(() =>
                                                        _rangeDatePickerValueWithDefaultValue =
                                                            dates),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            getValueText(
                                              config.calendarType,
                                              _rangeDatePickerValueWithDefaultValue,
                                            ),
                                          ),
                                          const Icon(IconlyLight.arrow_right_2),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    margin: const EdgeInsets.only(
                                        top: 30, bottom: 15),
                                    child: TextButton(
                                      onPressed: () => Get.back(),
                                      child: Text(
                                        'Show $results results',
                                        style: AppTextTheme
                                            .textTheme.bodyMedium!
                                            .copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        backgroundColor: Colors.grey[100],
                        barrierColor: Colors.black.withOpacity(0.3),
                        elevation: 0,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                    icon: const Icon(IconlyLight.filter),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
              text: 'Search in ',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: CustomColors.greyBoldColor,
              ),
              children: [
                TextSpan(
                  text: '543 ',
                  style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                    color: CustomColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(
                  text: 'events around!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
