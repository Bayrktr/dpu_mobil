import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/product/extention/datetime/Idatetime_extention.dart';
import 'package:dpu_mobil/app/product/extention/string/general_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  DateContainer({super.key, this.date});

  final DateTime? date;

  final textColor = CustomColors.white.getColor;

  @override
  Widget build(BuildContext context) {
    final dateMonthName = date?.monthName ?? LocaleKeys.general_error;
    return Container(
      width: context.sized.dynamicHeight(0.08),
      height: context.sized.dynamicHeight(0.08),
      decoration: BoxDecoration(
        color: context.customTheme.selectedBottomBarItemColor,
        borderRadius: context.borderRadius.low,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date?.day.toString() ?? LocaleKeys.general_unknown.lang.tr,
            style: TextStyle(
              color: textColor,
              fontSize: context.fontSize.normal,
            ),
          ),
          Text(
            dateMonthName.first(3),
            style: TextStyle(
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
