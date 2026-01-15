import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

extension NullableStringExtention on String?{
  String get unkownMessage {
    if(this == null){
      return LocaleKeys.general_unknown.lang.tr;
    }else{
      return this!;
    }
  }
}