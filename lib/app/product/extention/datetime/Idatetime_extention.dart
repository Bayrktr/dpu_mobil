import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

extension Idatetimeextention on DateTime? {
  String get monthName {
    switch (this?.month) {
      case 1:
        return LocaleKeys.months_january.lang.tr;
      case 2:
        return LocaleKeys.months_february.lang.tr;
      case 3:
        return LocaleKeys.months_march.lang.tr;
      case 4:
        return LocaleKeys.months_april.lang.tr;
      case 5:
        return LocaleKeys.months_may.lang.tr;
      case 6:
        return LocaleKeys.months_june.lang.tr;
      case 7:
        return LocaleKeys.months_july.lang.tr;
      case 8:
        return LocaleKeys.months_august.lang.tr;
      case 9:
        return LocaleKeys.months_september.lang.tr;
      case 10:
        return LocaleKeys.months_november.lang.tr;
      case 11:
        return LocaleKeys.months_november.lang.tr;
      case 12:
        return LocaleKeys.months_december.lang.tr;
      default:
        return LocaleKeys.general_error.lang.tr;
    }
  }

  String get dayName {
    if (this == null) return LocaleKeys.general_unknown.lang.tr;
    switch ((this!.day / 7).toInt()) {
      case 1:
        return LocaleKeys.days_monday.lang.tr;
      case 2:
        return LocaleKeys.days_tuesday.lang.tr;
      case 3:
        return LocaleKeys.days_wednesday.lang.tr;
      case 4:
        return LocaleKeys.days_thursday.lang.tr;
      case 5:
        return LocaleKeys.days_friday.lang.tr;
      case 6:
        return LocaleKeys.days_saturday.lang.tr;
      case 7:
        return LocaleKeys.days_sunday.lang.tr;
      default:
        return LocaleKeys.general_unknown.lang.tr;
    }
  }
}
