import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

part 'second_news_view_mixin.dart';

@RoutePage()
class SecondNewsView extends BaseView with _SecondNewsViewMixin {
  const SecondNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
