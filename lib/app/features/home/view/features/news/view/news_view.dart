import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/container/model/home_view_page_selection_container_model.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

part 'news_view_mixin.dart';

@RoutePage()
class NewsView extends BaseView with _NewsViewMixin {
  NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
