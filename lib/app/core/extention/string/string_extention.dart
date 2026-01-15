import 'package:dpu_mobil/app/core/extention/string/datetime_extention.dart';
import 'package:dpu_mobil/app/core/extention/string/lang_extention.dart';

extension StringExtension on String {
  LangExtension get lang => LangExtension(this);

  DatetimeExtention get datetime => DatetimeExtention(this);




}
